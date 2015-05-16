%% @author amir
%% @doc @todo Add description to test.


-module(test).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start/0]).



%% ====================================================================
%% Internal functions
%% ====================================================================

start()->
	LRU = lrulist:new(),
	{ok,LRU0} = lrulist:insert(5, perry, LRU,[{slidingexpire, 4}]),
	{Reply,LRU1} = lrulist:get(5, LRU0),
	io:format("~p~n",[Reply]),
	timer:sleep(4500),
	{Reply0,_LRU2} = lrulist:get(5, LRU1),
	Reply0.
