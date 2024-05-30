# ef-jobreciept
This script is a valuable addition to your FiveM server, specifically designed for use with QB-Core. This script empowers your server with enhanced logging capabilities, allowing you to keep track of various in-game activities related to PDM (Premium Deluxe Motorsport), EDM (Exotic Dealership Motors), and mechanic work. It also offers seamless integration with Discord, enabling real-time log notifications through a specified webhook.

<br>

![ef-jobreciept](https://github.com/itzsurajig/ef-jobreceipt/assets/104319683/82536780-ff8e-4ff2-9a66-386c610e5878)



# Free Download
# [Tebex](https://ef-productions.tebex.io/package/5982822)

[YouTube Preview](https://www.youtube.com/watch?v=aahFVvQSp-w)

# Installation
Step 1.  Drag and drop in resource folder.

Step 2. Paste Your Discord webhook in config file.

Step 3. Install [ox_lib](https://github.com/overextended/ox_lib) and ensure `ox_lib`

Step 3. ensure `ef-jobreciept`


# easy Config
<h4>Example</h4>

```lua
Config.PDM = {
    job = 'cardealer',   --- job name
    Location = vector3(-56.86, -1096.98, 26.42),
    heading = 219.08,
    minZ = 24.332054138184,
    maxZ = 30.332054138184,
    Wehbhook = '' --- webhook here
}
```



