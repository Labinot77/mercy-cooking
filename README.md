mercy-ui/cl_config.lua

```
['restingTemp'] = {
        ['Show'] = false,
        ['Value'] = 100.0
    },
    ['heatingTemp'] = {
        ['Show'] = false,
        ['Value'] = 100.0
    },
    ['mixture'] = {
        ['Show'] = false,
        ['Value'] = 100.0
    },
    ['controlPanel'] = {
        ['Show'] = false,
        ['Value'] = 100.0
    },
    ['oxygen'] = {
        ['Show'] = false,
        ['Value'] = 100.0
    },
    ['mixer'] = {
        ['Show'] = false,
        ['Value'] = 100.0
    },
```
mercy-ui/nui/apps/Hud/js/main.js

```
 if (restingTemp == undefined) restingTemp = CreateHud('hud-restingTemp', 'rgb(423, 234, 111)', 'rgb(33, 12, 33, 0.35)', 650);
    if (heatingTemp == undefined) heatingTemp = CreateHud('hud-heatingTemp', 'rgb(0, 0, 0)', 'rgb(0, 0, 0, 0.35)', 650);
    if (mixture == undefined) mixture = CreateHud('hud-mixture', 'rgb(0, 0, 0)', 'rgb(0, 0, 0, 0.35)', 650);
    if (controlPanel == undefined) controlPanel = CreateHud('hud-controlPanel', 'rgb(0, 0, 0)', 'rgb(0, 0, 0, 0.35)', 650);
    if (oxygen == undefined) oxygen = CreateHud('hud-oxygen', 'rgb(0, 0, 0)', 'rgb(0, 0, 0, 0.35)', 650);
    if (mixer == undefined) mixer = CreateHud('hud-mixer', 'rgb(0, 0, 0)', 'rgb(0, 0, 0, 0.35)', 650);
```
