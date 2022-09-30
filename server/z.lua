----------------------------------------------------------------
--  CARREGAR
----------------------------------------------------------------
RegisterServerEvent('dz_emotes:sync')
AddEventHandler('dz_emotes:sync', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)
	print("got to srv dz_emotes:sync")
	TriggerClientEvent('dz_emotes:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
	print("triggering to target: " .. tostring(targetSrc))
	TriggerClientEvent('dz_emotes:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('dz_emotes:stop')
AddEventHandler('dz_emotes:stop', function(targetSrc)
	TriggerClientEvent('dz_emotes:cl_stop', targetSrc)
end)


RegisterServerEvent('dz_emotes:sync')
AddEventHandler('dz_emotes:sync', function(target, animationLib, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)
	print("got to srv dz_emotes:sync")
	TriggerClientEvent('dz_emotes:syncTarget', targetSrc, source, animationLib, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
	print("triggering to target: " .. tostring(targetSrc))
	TriggerClientEvent('dz_emotes:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('dz_emotes:stop')
AddEventHandler('dz_emotes:stop', function(targetSrc)
	TriggerClientEvent('dz_emotes:cl_stop', targetSrc)
end)
