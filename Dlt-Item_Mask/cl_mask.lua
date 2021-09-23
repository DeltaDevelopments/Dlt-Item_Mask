ESX        = nil
local mask = false

RegisterNetEvent("mask:putmask", function (lol, lol2)


  RequestAnimDict("mp_masks@standard_car@ds@")

    while not HasAnimDictLoaded("mp_masks@standard_car@ds@") do
      Wait(0)
    end  --put_on_mask"


    TaskPlayAnim(PlayerPedId(), "mp_masks@standard_car@ds@", "put_on_mask", -4.0, -4.0, 800, 0, 0.0)
    Wait(800)
    
    if mask then
        mask = not mask
        print("put mask")
        SetPedComponentVariation(PlayerPedId(), 1, -1, 1, 0)
    else
        mask = not mask
        print("remove mask")
        SetPedComponentVariation(PlayerPedId(), 1, lol, lol2, 0)  --In place of 100 put the number of the mask you need, in place of the last 1 put the number of the texture of the mask (usually 1)
    end
end)
