local QBCore = exports['qb-core']:GetCoreObject()

local chair = {
  'chair1',
  'chair2',
  'chair3',
  'chair4',
  'chair5',
  'chair6',
  'chair7',
  'chair8',
  'chair9',
  'chair10',
  'chair11',
  'chair12',
  'chair13',
  'chair14',
  'chair15',
  'chair16',
  'chair17',
  'chair18',
  'chair19',
  'chair20',
  'chair21',
  'chair22',
  'chair23',
  'chair24',
  'chair25',
  'chair26',
  'chair27',
  'chair28',
  'chair29',
  'chair30',
  'chair31',
  'chair32',
  'chair33',
  'chair34',
  'chair35',
  'chair36',
  'chair37',
  'chair38',
  'chair39',
  'chair40',
  'chair41',
  'chair42',
  'chair43',
  'chair44',
  'chair45',
  'chair46',
  'chair47',
  'chair48',
  'chair49',
  'chair50',
  'chair51',
  'chair52',
  'chair53',
  'chair54',
  'chair55',
  'chair56',
  'chair57',
  'chair58',
  'chair59',
  'chair60',
  'chair61',
  'chair62',
  'chair63',
  'chair64',
  'chair67',
  'chair68',
  'chair69',
  'chair70',
  'chair71',
  'chair72',
  'chair73',
  'chair74',
  'chair75',
  'chair76',
  'chair77',
  'chair78',
  'chair79',
  'chair80',
  'chair81',
  'chair82',
  'chair83',
  'chair84',
  'chair85',
  'chair86',
  'chair87',
  'chair88',
  'chair89',
  'chair90',
  'chair91',
  'chair92',
  'chair93',
  'chair94',
  'chair95',
  'chair96',
  'chair97',
  'chair98',
  'chair99',
  'chair100',
  'chair101',
  'chair102',
  'chair103',
  'chair104',
  'chair105',
  'chair106',
  'chair107',
  'chair108',
  'chair109',
  'chair110',
}


CreateThread(function()
    for k,v in pairs(chair) do
       QBCore.Functions.CreateUseableItem(v, function(source, item)
           TriggerClientEvent('jim-chairs:Use', sourcem item.name)
       end)
    end
end)
