ESX = exports.es_extended:getSharedObject()

ESX.RegisterUsableItem("mask", function (source)
    TriggerClientEvent("mask:putmask", source, 1, 0)
end) -- to create other masks copy this and paste it below, just change the number after "source" with the mask number and the item name.