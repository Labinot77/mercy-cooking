


Citizen.CreateThread(function()
exports['mercy-ui']:AddEyeEntry("meth_lab_open_close", {
  Type = 'Zone',
  SpriteDistance = 3,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(1065.65, -2323.34, 19.77),
      Length = 0.5,
      Width = 0.4,
      Data = {
          debugPoly = false,
          heading = 90,
          minZ = 19.50,
          maxZ = 19.92,
      },
  },
  Options = {
      {
          Name = 'methlab_1',
          Icon = '',
          Label = 'Стартирай всички машини',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/check-lab-values',
          EventParams = { Id = 1 , Animation = "idle_v4_pressoperator", AnimDict = "anim@amb@business@coc@coc_packing@", ProgressText = "Starting the lab"},
          Enabled = function(Entity)
                  return true
          end,
      },
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_1_stage1", {
  Type = 'Zone',
  SpriteDistance = 3,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(1060.62, -2319.70, 19.45),
      Length = 0.4,
      Width = 1.2,
      Data = {
          debugPoly = false,
          heading = 83,
          minZ = 19.44,
          maxZ = 20.80,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage1',
          Icon = '',
          Label = 'Adjust the Oxygen Intake',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { 
          labId = 1, key = "oxygen", MachineId = 1, value = 100 , Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Oxygen" 
      },
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_1_stage2", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(1062.04, -2316.18, 19.72),
      Length = 2.0,
      Width = 1.0,
      Data = {
          debugPoly = false,
          heading = 90,
          minZ = 18.72,
          maxZ = 20.92,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage2',
          Icon = '',
          Label = 'Mix ingredients',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 1, MachineId = 2, key = 'mixture', value = 100, Animation = "gar_ig_5_filling_can", AnimDict = "timetable@gardener@filling_can", ProgressText = "Filling Mixture"},
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_1_stage3", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(1057.28, -2317.95, 20.95),
      Length = 0.5,
      Width = 0.4,
      Data = {
          debugPoly = false,
          heading = 90,
          minZ = 19.70,
          maxZ = 20.44,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage3',
          Icon = '',
          Label = 'Adjust the Mixer',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 1, MachineId = 3, key = "mixer", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings" },
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_1_stage4", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(1056.8, -2319.82, 21.13),
      Length = 0.6,
      Width = 0.3,
      Data = {
          debugPoly = false,
          heading = 86,
          minZ = 19.70,
          maxZ = 20.44,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage4',
          Icon = '',
          Label = 'Adjust the Control Panel',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 1, MachineId = 4, key = "controlPanel", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"  },
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_1_stage5", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(1065.88, -2318.80, 21.16),
      Length = 0.3,
      Width = 0.1,
      Data = {
          debugPoly = false,
          heading = 166,
          minZ = 19.97,
          maxZ = 20.30,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage5',
          Icon = '',
          Label = 'Adjust the Tempeture',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 1, MachineId = 5, key = "heatingTemp", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"  },
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_1_stage6", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(1059.76, -2323.25, 19.72),
      Length = 1.6,
      Width = 1.0,
      Data = {
          debugPoly = true,
          heading = 90,
          minZ = 18.72,
          maxZ = 21.12,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage6',
          Icon = '',
          Label = 'Adjust the resting Tempeture',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 1, MachineId = 6, key = "restingTemp", value = 100, Animation = "machinic_loop_mechandplayer", AnimDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", ProgressText = "Adjusting Tempeture" },
          Enabled = function(Entity)
              return true
          end,
      }
  }        
})

-- METHLAB 2

exports['mercy-ui']:AddEyeEntry("meth_lab_open_close_2", {
  Type = 'Zone',
  SpriteDistance = 3,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(44.80, -2696.49, -3.15),
      Length = 0.5,
      Width = 0.4,
      Data = {
          debugPoly = false,
          heading = 90,
          minZ = -4.7,
          maxZ = -4.4,
      },
  },
  Options = {
      {
          Name = 'methlab_2',
          Icon = '',
          Label = 'Стартирай всички машини',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/check-lab-values',
          EventParams = { Id = 2, Animation = "idle_v4_pressoperator", AnimDict = "anim@amb@business@coc@coc_packing@", ProgressText = "Starting the lab"  },
          Enabled = function(Entity)
                  return true
          end,
      },
      -- {
      --     Name = 'methlab_2',
      --     Icon = '',
      --     Label = 'Махни иконите (ако не са се махнали)',
      --     EventType = 'Client',
      --     EventName = 'mercy-illegal/client/methLabs/hide-all',
      --     EventParams = { Id = 2 },
      --     Enabled = function(Entity)
      --             return true
      --     end,
      -- }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_2_stage1", {
  Type = 'Zone',
  SpriteDistance = 3,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(39.69, -2692.99, -4.11),
      Length = 0.4,
      Width = 1.2,
      Data = {
          debugPoly = false,
          heading = 83,
          minZ = -4.71,
          maxZ = -3.40,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage1',
          Icon = '',
          Label = 'Adjust the Oxygen Intake',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { 
          labId = 2, key = "oxygen", value = 100 , Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Oxygen" 
      },
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_2_stage2", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(40.95, -2689.10, -3.15),
      Length = 2.0,
      Width = 1.0,
      Data = {
          debugPoly = false,
          heading = 90,
          minZ = -5.15,
          maxZ = -3.70,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage2',
          Icon = '',
          Label = 'Mix ingredients',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 2, key = 'mixture', value = 100, Animation = "gar_ig_5_filling_can", AnimDict = "timetable@gardener@filling_can", ProgressText = "Filling Mixture"},
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_2_stage3", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(35.83, -2693.29, -4.18),
      Length = 0.5,
      Width = 0.3,
      Data = {
          debugPoly = false,
          heading = 86,
          minZ = -4.60,
          maxZ = -3.80,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage3',
          Icon = '',
          Label = 'Adjust the Mixer',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 2, key = "mixer", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings" },
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_2_stage4", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(36.25, -2691.33, -3.24),
      Length = 0.6,
      Width = 0.3,
      Data = {
          debugPoly = false,
          heading = 86,
          minZ = -4.64,
          maxZ = -3.80,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage4',
          Icon = '',
          Label = 'Adjust the Control Panel',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 2, key = "controlPanel", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"},
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_2_stage5", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(44.93, -2691.91, -3.28),
      Length = 0.3,
      Width = 0.1,
      Data = {
          debugPoly = false,
          heading = 166,
          minZ = -4.26,
          maxZ = -3.95,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage5',
          Icon = '',
          Label = 'Adjust the Tempeture',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 2, key = "heatingTemp", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"  },
          Enabled = function(Entity)
              return true
          end,
      }
  }
})

exports['mercy-ui']:AddEyeEntry("meth_lab_2_stage6", {
  Type = 'Zone',
  SpriteDistance = 3.51,
  Distance = 1.6,
  ZoneData = {
      Center = vector3(38.88, -2696.51, -3.59),
      Length = 1.6,
      Width = 1.0,
      Data = {
          debugPoly = false,
          heading = 90,
          minZ = -5.59,
          maxZ = -3.30,
      },
  },
  Options = {
      {
          Name = 'methlab_1_stage6',
          Icon = '',
          Label = 'Adjust the resting Tempeture',
          EventType = 'Client',
          EventName = 'mercy-illegal/client/methLabs/adjust-machine',
          EventParams = { labId = 2, key = "restingTemp", value = 100, Animation = "machinic_loop_mechandplayer", AnimDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", ProgressText = "Adjusting Tempeture" },
          Enabled = function(Entity)
              return true
          end,
      }
  }        
})
--methlab 3

exports['mercy-ui']:AddEyeEntry("meth_lab_open_close_3", {
Type = 'Zone',
SpriteDistance = 3,
Distance = 1.6,
ZoneData = {
Center = vector3(188.89, 2426.25, 48.40),
Length = 0.5,
Width = 0.4,
Data = {
  debugPoly = false,
  heading = 86,
  minZ = 48,
  maxZ = 48.40,
},
},
Options = {
{
  Name = 'methlab_2',
  Icon = '',
  Label = 'Стартирай всички машини',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/check-lab-values',
  EventParams = { Id = 3,  Animation = "idle_v4_pressoperator", AnimDict = "anim@amb@business@coc@coc_packing@", ProgressText = "Starting the lab" },
  Enabled = function(Entity)
          return true
  end,
},
-- {
--     Name = 'methlab_2',
--     Icon = '',
--     Label = 'Махни иконите (ако не са се махнали)',
--     EventType = 'Client',
--     EventName = 'mercy-illegal/client/methLabs/hide-all',
--     EventParams = { Id = 2 },
--     Enabled = function(Entity)
--             return true
--     end,
-- }
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_3_stage1", {
Type = 'Zone',
SpriteDistance = 3,
Distance = 1.6,
ZoneData = {
Center = vector3(184.96, 2421.48, 49.4),
Length = 0.4,
Width = 1.2,
Data = {
  debugPoly = false,
  heading = 172,
  minZ = 48,
  maxZ = 49.3,
},
},
Options = {
{
  Name = 'methlab_1_stage1',
  Icon = '',
  Label = 'Adjust the Oxygen Intake',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { 
  labId = 3, key = "oxygen", value = 100 , Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Oxygen" 
},
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_3_stage2", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(181.52, 2423.08, 49.55),
Length = 1.5,
Width = 1.0,
Data = {
  debugPoly = false,
  heading = 175,
  minZ = 47.8,
  maxZ = 49,
},
},
Options = {
{
  Name = 'methlab_1_stage2',
  Icon = '',
  Label = 'Mix ingredients',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 3, key = 'mixture', value = 100, Animation = "gar_ig_5_filling_can", AnimDict = "timetable@gardener@filling_can", ProgressText = "Filling Mixture"},
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_3_stage3", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(182.92, 2418.23, 49),
Length = 0.5,
Width = 0.2,
Data = {
  debugPoly = false,
  heading = 357,
  minZ = 48.10,
  maxZ = 48.90,
},
},
Options = {
{
  Name = 'methlab_1_stage3',
  Icon = '',
  Label = 'Adjust the Mixer',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 3, key = "mixer", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings" },
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_3_stage4", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(184.83, 2417.62, 49.56),
Length = 0.5,
Width = 0.25,
Data = {
  debugPoly = false,
  heading = 354,
  minZ = 48.10,
  maxZ = 48.90,
},
},
Options = {
{
  Name = 'methlab_1_stage4',
  Icon = '',
  Label = 'Adjust the Control Panel',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 3, key = "controlPanel", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"  },
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_3_stage5", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(184.37, 2426.8, 48.40),
Length = 0.3,
Width = 0.1,
Data = {
  debugPoly = false,
  heading = 70,
  minZ = 48.45,
  maxZ = 48.80,
},
},
Options = {
{
  Name = 'methlab_1_stage5',
  Icon = '',
  Label = 'Adjust the Tempeture',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 3, key = "heatingTemp", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"  },
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_3_stage6", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(188.41, 2420.38, 47.90),
Length = 1.6,
Width = 1.0,
Data = {
  debugPoly = false,
  heading = 355,
  minZ = 47.20,
  maxZ = 49.30,
},
},
Options = {
{
  Name = 'methlab_1_stage6',
  Icon = '',
  Label = 'Adjust the resting Tempeture',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 3, key = "restingTemp", value = 100, Animation = "machinic_loop_mechandplayer", AnimDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", ProgressText = "Adjusting Tempeture" },
  Enabled = function(Entity)
      return true
  end,
}
}        
})

--methlab 4

exports['mercy-ui']:AddEyeEntry("meth_lab_open_close_4", {
Type = 'Zone',
SpriteDistance = 3,
Distance = 1.6,
ZoneData = {
Center = vector3(2458.30, 1573.35, 22),
Length = 0.4,
Width = 0.4,
Data = {
  debugPoly = false,
  heading = 90,
  minZ = 22,
  maxZ = 22.40,
},
},
Options = {
{
  Name = 'methlab_2',
  Icon = '',
  Label = 'Стартирай всички машини',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/check-lab-values',
  EventParams = { Id = 4,  Animation = "idle_v4_pressoperator", AnimDict = "anim@amb@business@coc@coc_packing@", ProgressText = "Starting the lab" },
  Enabled = function(Entity)
          return true
  end,
},
-- {
--     Name = 'methlab_2',
--     Icon = '',
--     Label = 'Махни иконите (ако не са се махнали)',
--     EventType = 'Client',
--     EventName = 'mercy-illegal/client/methLabs/hide-all',
--     EventParams = { Id = 2 },
--     Enabled = function(Entity)
--             return true
--     end,
-- }
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_4_stage1", {
Type = 'Zone',
SpriteDistance = 3,
Distance = 1.6,
ZoneData = {
Center = vector3(2454.83, 1568.24, 22),
Length = 0.4,
Width = 1.2,
Data = {
  debugPoly = false,
  heading = 175,
  minZ = 22.,
  maxZ = 23.3,
},
},
Options = {
{
  Name = 'methlab_1_stage1',
  Icon = '',
  Label = 'Adjust the Oxygen Intake',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { 
  labId = 4, key = "oxygen", value = 100 , Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Oxygen" 
},
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_4_stage2", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(2451.4, 1569.55, 21.90),
Length = 1.5,
Width = 1.0,
Data = {
  debugPoly = false,
  heading = 180,
  minZ = 21.90,
  maxZ = 23,
},
},
Options = {
{
  Name = 'methlab_1_stage2',
  Icon = '',
  Label = 'Mix ingredients',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 4, key = 'mixture', value = 100, Animation = "gar_ig_5_filling_can", AnimDict = "timetable@gardener@filling_can", ProgressText = "Filling Mixture"},
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_4_stage3", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(2453.19, 1564.80, 22.30),
Length = 0.5,
Width = 0.2,
Data = {
  debugPoly = false,
  heading = 357,
  minZ = 22.10,
  maxZ = 22.90,
},
},
Options = {
{
  Name = 'methlab_1_stage3',
  Icon = '',
  Label = 'Adjust the Mixer',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 4, key = "mixer", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings" },
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_4_stage4", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(2455.1, 1564.37, 22.30),
Length = 0.5,
Width = 0.25,
Data = {
  debugPoly = false,
  heading = 360,
  minZ = 22.10,
  maxZ = 22.90,
},
},
Options = {
{
  Name = 'methlab_1_stage4',
  Icon = '',
  Label = 'Adjust the Control Panel',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 4, key = "controlPanel", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"  },
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_4_stage5", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(2453.76, 1573.46, 22.72),
Length = 0.3,
Width = 0.1,
Data = {
  debugPoly = false,
  heading = 77,
  minZ = 22.47,
  maxZ = 22.80,
},
},
Options = {
{
  Name = 'methlab_1_stage5',
  Icon = '',
  Label = 'Adjust the Tempeture',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 4, key = "heatingTemp", value = 100, Animation = "idle_c", AnimDict = "amb@world_human_clipboard@male@idle_a", ProgressText = "Adjusting Settings"  },
  Enabled = function(Entity)
      return true
  end,
}
}
})

exports['mercy-ui']:AddEyeEntry("meth_lab_4_stage6", {
Type = 'Zone',
SpriteDistance = 3.51,
Distance = 1.6,
ZoneData = {
Center = vector3(2458.4, 1567.43, 21),
Length = 1.6,
Width = 1.0,
Data = {
  debugPoly = false,
  heading = 360,
  minZ = 21,
  maxZ = 23.30,
},
},
Options = {
{
  Name = 'methlab_1_stage6',
  Icon = '',
  Label = 'Adjust the resting Tempeture',
  EventType = 'Client',
  EventName = 'mercy-illegal/client/methLabs/adjust-machine',
  EventParams = { labId = 4, key = "restingTemp", value = 100, Animation = "machinic_loop_mechandplayer", AnimDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", ProgressText = "Adjusting Tempeture" },
  Enabled = function(Entity)
      return true
  end,
}
}        
})
end)