----------------------------------------------------------------
--  CARREGAR
----------------------------------------------------------------
RegisterServerEvent('dz_emotes:sync')
AddEventHandler('dz_emotes:sync', function(target, targetSrc, nome)
	TriggerClientEvent('dz_emotes:syncTarget', targetSrc, source, nome)
	TriggerClientEvent('dz_emotes:syncMe', source, nome)
end)

RegisterServerEvent('dz_emotes:stop')
AddEventHandler('dz_emotes:stop', function(targetSrc)
	TriggerClientEvent('dz_emotes:cl_stop', targetSrc)
end)


RegisterServerEvent('dz_emotes:sync')
AddEventHandler('dz_emotes:sync', function(target, targetSrc, nome)
	TriggerClientEvent('dz_emotes:syncTarget', targetSrc, source, nome)
	TriggerClientEvent('dz_emotes:syncMe', source, nome)
end)

RegisterServerEvent('dz_emotes:stop')
AddEventHandler('dz_emotes:stop', function(targetSrc)
	TriggerClientEvent('dz_emotes:cl_stop', targetSrc)
end)
