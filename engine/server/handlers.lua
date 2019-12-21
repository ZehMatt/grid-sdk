--=========== Copyright © 2019, Planimeter, All rights reserved. ===========--
--
-- Purpose: Engine server handlers
--
--==========================================================================--

local debug     = debug
local engine    = engine
local convar    = convar
local ipairs    = ipairs
local love      = love
local print     = print
local require   = require
local tostring  = tostring
local unrequire = unrequire
local _G        = _G

module( "engine.server" )

function load( arg )
	require( "engine.server.network" )

	local network = engine.server.network
	local initialized = network.initializeServer()
	if ( not initialized ) then
		return false
	end

	_G._SERVER = true

	require( "game" )
	require( "game.server" )

	local game = _G.game.server
	game.load( arg )

	return true
end

function quit()
	-- Shutdown game
	local game = _G.game and _G.game.server or nil
	if ( game ) then
		game.shutdown()
		unrequire( "game.server" )
		_G.game.server = nil
	end

	unrequire( "game" )
	_G.game = nil

	-- Shutdown server
	local network = engine.server.network
	network.shutdownServer()

	unrequire( "engine.server.network" )
	engine.server.network = nil
	unrequire( "engine.server.payloads" )
	unrequire( "engine.server.handlers" )

	_G._SERVER = nil
end

local tickrate = convar( "tickrate", 20, nil, nil,
                     "Sets the server tick rate" )

local _accumulator = 0

function update( dt )
	local game   = _G.game and _G.game.server or nil
	local entity = _G.entity
	local network = engine.server.network

	if ( game ) then
		game.update( dt )

		if ( entity ) then
			local entities = entity.getAll()
			for _, ent in ipairs( entities ) do
				ent:update( dt )
			end
		end
	end

	local timestep = 1 / tickrate:getNumber()
	_accumulator = _accumulator + dt

	while ( _accumulator >= timestep ) do
		engine.server.tick( timestep )
		if ( network ) then
			network.tick( timestep )
		end
		_accumulator = _accumulator - timestep
	end

end

local function error_printer(msg, layer)
	print((debug.traceback("Error: " ..
	       tostring(msg), 1+(layer or 1)):gsub("\n[^\n]+$", "")))
end

function errhand(msg)
	msg = tostring(msg)

	error_printer(msg, 2)

end
