import 'package:flutter/material.dart';

class Item {
  final String name;
  final String stats;
  final String explanation;
  final Image image;
  final int cost;
  final int sell;

  Item(
      {this.name,
      this.explanation,
      this.image,
      this.cost,
      this.sell,
      this.stats});
}

List<Item> physical = [
  items[38],
  items[47],
  items[37],
  items[45],
  items[46],
  items[49],
  items[40],
  items[41],
  items[43],
  items[36],
  items[33],
  items[34],
  items[48],
  items[42],
  items[39],
  items[44],
  items[35],
];

List<Item> magic = [
  items[1],
  items[2],
  items[3],
  items[0],
  items[4],
  items[6],
  items[7],
  items[8],
  items[9],
  items[10],
  items[11],
  items[12],
  items[13],
  items[14],
  items[15],
  items[16],
];

List<Item> tank = [
  items[17],
  items[18],
  items[19],
  items[20],
  items[21],
  items[22],
  items[23],
  items[24],
  items[25],
  items[26],
  items[27],
  items[28],
  items[29],
  items[30],
  items[31],
  items[32],
];

List<Item> boots = [
  items[51],
  items[52],
  items[53],
  items[54],
  items[50],
];

List<Item> enchant = [
  items[55],
  items[56],
  items[57],
  items[58],
  items[59],
  items[60],
  items[61],
  items[62],
  items[63],
];

List<Item> items = [
  /*1*/ Item(
      name: "Rabadon's Deathcap",
      stats: "+130 ability power",
      explanation: "UNIQUE – OVERKILL: Increases ability power by 40%.",
      cost: 3500,
      sell: 2450,
      image: Image.asset('images/items/rabadon.png')),
  /*2*/ Item(
      name: "Luden's Echo",
      stats: "+80 Ability Power\n+10 ability haste\n+300 mana",
      explanation:
          "UNIQUE – DISCORDIC ECHO: Moving and casting abilities builds Discord. At 100 Discord your next damaging ability deals 100 (+ 10% AP) bonus magic damage to your target and up to 3 nearby enemies.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/luden.png')),
  /*3*/ Item(
      name: "Morellonomicon",
      stats: "+70 ability power\n+300 health",
      explanation:
          "UNIQUE – DEATH TOUCH: +15 magic penetration\nUNIQUE – CURSED: Dealing magic damage to an enemy champion inflicts them with Grievous Wounds for 3 seconds.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/morello.png')),
  /*4*/ Item(
      name: "Void Staff",
      stats: "+70 ability power",
      explanation: "UNIQUE – DISSOLVE: +40% magic penetration",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/voidstaff.png')),
  /*5*/ Item(
      name: "Rylai's Crystal Scepter",
      stats: "+70 ability power\n+350 health",
      explanation:
          "UNIQUE – ICY: Damaging active abilities slow enemies by 20% for 1 second.",
      cost: 2700,
      sell: 1890,
      image: Image.asset('images/items/rylai.png')),
  /*6*/ Item(
      name: "Liandry's Torment",
      stats: "+90 ability power\n+250 health",
      explanation:
          "UNIQUE – MADNESS: Being in combat with enemy champions generates one stack every second for the next 4 seconds. Deal 2% increased damage for each stack, up to a maximum of 10%.\nUNIQUE – TORMENT: Ability damage deals 1% of target's maximum health magic damage over 3 seconds. This damage doubles if they are slowed or immobilized.",
      cost: 3150,
      sell: 2205,
      image: Image.asset('images/items/liandry.png')),
  /*7*/ Item(
      name: "Rod of Ages",
      stats: "+60 ability power\n+250 health\n+300 mana",
      explanation:
          "UNIQUE – ETERNITY: Restore mana equal to 15% of damage taken from champions. Restore health equal to 20% of mana spent, up to 25 health per cast, while toggle abilities can heal for up to 25 per second.\nVETERAN: This item gains 20 health, 10 mana and 6 ability power every 30 seconds, up to 10 times, for a maximum of 200 health, 100 mana and 60 ability power.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/rod.png')),
  /*8*/ Item(
      name: "Lich Bane",
      stats: "+80 ability power\n+10 ability haste\n+300 mana",
      explanation:
          "UNIQUE – SPELLBLADE: After using an ability, your next basic attack within 10 seconds deals 75% base AD (+ 50% AP) bonus magic damage on-hit (1.5 second cooldown, begins after using the empowered attack).\nUNIQUE – BANE: +5% movement speed",
      cost: 3050,
      sell: 2135,
      image: Image.asset('images/items/lichbane.png')),
  /*9*/ Item(
      name: "Nashor's Tooth",
      stats: "+70 ability power\n+50% attack speed\n+25 ability haste",
      explanation:
          "UNIQUE – BITE: Basic attacks deal 15 (+ 15% AP) bonus magic damage.",
      cost: 3200,
      sell: 2240,
      image: Image.asset('images/items/nashor.png')),
  /*10*/ Item(
      name: "Archangel's Staff",
      stats: "+35 ability power\n+25 ability haste\n+500 mana",
      explanation:
          "UNIQUE – AWE: Grants bonus ability power equal to 1% maximum mana. Refunds 25% of mana spent.\nUNIQUE – MANA CHARGE: Grants a charge every 4 seconds, up to 3 charges. Each mana expenditure consumes a charge and grants +12 mana, up to a maximum of 700 mana.\nTransforms into Seraph's Embrace Seraph's Embrace at +700 mana.",
      cost: 2950,
      sell: 2065,
      image: Image.asset('images/items/archangel.png')),
  /*11*/ Item(
      name: "Seraph's Embrace",
      stats: "+35 ability power\n+25 ability haste\n+1200 mana",
      explanation:
          "UNIQUE – AWE: Grants bonus ability power equal to 3% maximum mana. Refunds 25% of mana spent.\nUNIQUE – LIFELINE: If you would take damage that would reduce maximum health below 35%, you first consume 15% of your current mana to shield yourself for an equal amount plus 150 for 2 seconds (90 second cooldown).",
      cost: 0,
      sell: 2065,
      image: Image.asset('images/items/seraph.png')),
  /*12*/ Item(
      name: "Ardent Censer",
      stats: "+60 ability power\n+10 ability haste\n+250 health",
      explanation:
          "UNIQUE – ARDENT: +5% movement speed\nUNIQUE – CENSER: When you heal or shield an allied champion (excluding yourself), both of you gain 10% − 30% (based on level) bonus attack speed and your basic attacks deal 16 − 30 (based on level) bonus magic damage for 6 seconds. Regeneration effects do not trigger Censer.",
      cost: 2600,
      sell: 1820,
      image: Image.asset('images/items/ardent.png')),
  /*13*/ Item(
      name: "Hextech Gunblade",
      stats: "+60 ability power\n+30 attack damage",
      explanation:
          "UNIQUE – HEXTECH BOLT: Hitting an enemy champion with a basic attack or ability shocks them for 100 − 200 (based on level) (+ 30% AP) magic damage and slows them by 40% for 2 seconds (30 second cooldown).\nUNIQUE – LIFE DRAIN: +15% Physical Vamp\nUNIQUE – ENERGY DRAIN: +15% Magical Vamp",
      cost: 3200,
      sell: 2240,
      image: Image.asset('images/items/gunblade.png')),
  /*14*/ Item(
      name: "Harmonic Echo",
      stats: "+80 ability power\n+10 ability haste\n+300 mana",
      explanation:
          "UNIQUE – HARMONIC ECHO: Moving and casting abilities builds Harmony. At 100 Harmony your next healing or shielding ability on an ally other than yourself restores 70 (+ 10% AP) health to your target and up to 3 nearby allied champions.",
      cost: 2800,
      sell: 2100,
      image: Image.asset('images/items/harmonicecho.png')),
  /*15*/ Item(
      name: "Athene's Unholy Grail",
      stats: "+55 ability power\n+10 ability haste\n+40 magic resistance",
      explanation:
          "UNIQUE – BLOOD PRICE: Stores 35% of premitigation damage dealt to champions as Blood, capped at 110 − 250 (based on level). Healing or shielding an ally consumes all Blood to heal them for an equal value.",
      cost: 2500,
      sell: 1750,
      image: Image.asset('images/items/athene.png')),
  /*16*/ Item(
      name: "Awakened Soulstealer",
      stats: "+65 ability power\n+25 ability haste\n+200 mana",
      explanation:
          "UNIQUE – SOUL CHARGED: Unique takedowns reduce the cooldown of your ultimate by 3%, capping at 15% after 5 stacks.",
      cost: 2500,
      sell: 1750,
      image: Image.asset('images/items/soulstealer.png')),
  /*17*/ Item(
      name: "Infinity Orb",
      stats: "+60 ability power\n+200 health",
      explanation:
          "UNIQUE – DESTINY: +5% movement speed\nUNIQUE – BALANCE: +15 magic penetration\nUNIQUE – INEVITABLE DEMISE: Abilities crit for 20% bonus damage against enemies below 35% health.",
      cost: 2850,
      sell: 1995,
      image: Image.asset('images/items/infinityorb.png')),
  /*18*/ Item(
      name: "Guardian Angel",
      stats: "+40 armor\n+40 attack damage",
      explanation:
          "UNIQUE – RESURRECT: Upon taking lethal damage, resurrects and restores 50% of base health and 30% of maximum mana after 4 seconds of stasis (210 second cooldown).",
      cost: 3100,
      sell: 2170,
      image: Image.asset('images/items/guardian.png')),
  /*19*/ Item(
      name: "Sunfire Cape",
      stats: "+40 armor\n+400 health",
      explanation:
          "UNIQUE – IMMOLATE: Deals 25 − 40 (based on level) magic damage per second to nearby enemies. Deals 50% bonus damage to minions and monsters.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/sunfirecape.png')),
  /*20*/ Item(
      name: "Spirit Visage",
      stats:
          "+10 ability haste\n+350 health\n+100% base health regeneration\n+45 magic resistance",
      explanation:
          "UNIQUE – BLESSED: Increases all healing, regen, and drain effects on yourself by 30%.",
      cost: 2900,
      sell: 2030,
      image: Image.asset('images/items/spiritvisage.png')),
  /*21*/ Item(
      name: "Randuin's Omen",
      stats: "+50 armor\n+400 health",
      explanation:
          "UNIQUE – ARMORED: Reduces damage from critical strikes by 15%.\nUNIQUE – COLD STEEL: Reduce the attack speed of enemies by 15% for 1.5 seconds when struck by a basic attack.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/randuin.png')),
  /*22*/ Item(
      name: "Thornmail",
      stats: "+75 armor\n+200 health",
      explanation:
          "UNIQUE – THORNS: Upon being hit by a basic attack on-hit, reflects 25 (+ 10% bonus armor) magic damage, while also inflicting Grievous Wounds on the attacker for 1 second.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/thornmail.png')),
  /*23*/ Item(
      name: "Frozen Mallet",
      stats: "+25 attack damage\n+550 health",
      explanation:
          "UNIQUE – ICY: Basic attacks slow enemies by 40% for 1.5 seconds.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/frozenmallet.png')),
  /*24*/ Item(
      name: "Warmog's Armor",
      stats: "+10 ability haste\n+650 health\n+200% base health regeneration",
      explanation:
          "UNIQUE – WARMOG'S HEART: If you have at least 2500 maximum health, regenerate 5% maximum health per second if you haven't taken damage with the last 6 seconds.",
      cost: 2850,
      sell: 1995,
      image: Image.asset('images/items/warmog.png')),
  /*25*/ Item(
      name: "Sterak's Gage",
      stats: "+400 health",
      explanation:
          "UNIQUE – HEAVY HANDED: Gain 50% of base attack damage as bonus attack damage.\nUNIQUE – LIFELINE: If you would take damage that would reduce maximum health below 35%, you first gain a shield that absorbs 75% of your bonus health that decays over 3 seconds (90 second cooldown).\nUNIQUE – STERAK'S FURY: Triggering LIFELINE increases size and grants 30% Tenacity for 3 seconds.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/sterak.png')),
  /*26*/ Item(
      name: "Iceborn Gauntlet",
      stats: "+50 armor\n+25 ability haste\n+450 mana",
      explanation:
          "UNIQUE – SPELLBLADE: After using an ability, your next basic attack within 10 seconds deals 100% base AD bonus physical damage on-hit. It also deals 100% base AD physical damage to enemies surrounding the target and creates a icy zone for 2 seconds, which slows enemies within by 30%. The zone has a radius of 180 (+ 55% bonus armor) units. (1.5 second cooldown, begins after using the empowered attack).",
      cost: 2700,
      sell: 1890,
      image: Image.asset('images/items/iceborn.png')),
  /*27*/ Item(
      name: "Dead Man's Plate",
      stats: "+50 armor\n+300 health",
      explanation:
          "UNIQUE – MOMENTUM: Moving builds Momentum, granting a maximum of 50 bonus movement speed at 100 stacks. Basic attacks expend all Momentum to deal bonus magic damage equal to the number of stacks. Momentum decays while movement is impaired.\nUNIQUE – CRUSHING BLOW: Basic attacks that expend maximum Momentum also slow by 50% by 1 second.",
      cost: 2900,
      sell: 2030,
      image: Image.asset('images/items/deadman.png')),
  /*28*/ Item(
      name: "Adaptive Helm",
      stats:
          "+300 health\n+100% base health regeneration\n+60 magic resistance",
      explanation:
          "UNIQUE – ADAPTIVE: Taking magic damage from a spell or effect reduces all subsequent magic damage taken from that spell or effect by 15% for 4 seconds. Multiple sources of magic damage can have this effect active at any one time and the duration is tracked separately per source.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/adaptive.png')),
  /*29*/ Item(
      name: "Abyssal Mask",
      stats: "+10 ability haste\n+300 health\n+40 magic resistance\n+300 mana",
      explanation:
          "UNIQUE – ETERNITY: Restore mana equal to 15% of damage taken from champions. Restore health equal to 20% of mana spent, up to 25 health per cast, while toggle abilities can heal for up to 25 per second.\nUNIQUE – ABYSSAL: Nearby enemy champions take 15% more magic damage (325 range).",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/abyssal.png')),
  /*30*/ Item(
      name: "Zeke's Convergence",
      stats: "+40 armor\n+10 ability haste\n+40 magic resistance\n+150 mana",
      explanation:
          "UNIQUE – HARBINGER: Casting your ultimate ability grants you and a nearby ally bonus effects for 10 seconds. You are surrounded with a 300 range FROST storm which slows enemies within it by 20%, and your ally's basic attacks burn their target with FIRE dealing 30% bonus magic damage over 2 seconds. Prioritizes highest attack damage ally.\nUNIQUE – FROSTFIRE COVENANT: If an enemy is both struck by FROST and FIRE, your FROST storm ignites and becomes FROSTFIRE. A FROSTFIRE storm, deals 40 magic damage per second to nearby enemies and slows by 40% instead for 3 seconds.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/zeke.png')),
  /*31*/ Item(
      name: "Protector's Vow",
      stats: "+40 armor\n+10 ability haste\n+350 health",
      explanation:
          "UNIQUE – PROTECTOR: Raise your Guard when next to an allied champion. If you or your ally take damage from a champion, monster, or turret, both of you receive a 125 (+ 20% bonus health) (+ 15% AP) shield and 20% bonus movement speed for 1.5 seconds (30 second cooldown).",
      cost: 2700,
      sell: 1890,
      image: Image.asset('images/items/protector.png')),
  /*32*/ Item(
      name: "Winter's Approach",
      stats: "+40 armor\n+10 ability haste\n+450 mana",
      explanation:
          "UNIQUE – AWE: Grants bonus armor equal to 1% maximum mana. Refunds 15% of mana spent.\nUNIQUE – MANA CHARGE: Grants a charge every 4 seconds, up to 3 charges. Each basic attack on-hit or mana expenditure consumes a charge and grants +8 mana, up to a maximum of 700 mana.\nTransforms into Fimbulwinter at +700 mana.",
      cost: 2600,
      sell: 1820,
      image: Image.asset('images/items/winter.png')),
  /*33*/ Item(
      name: "Fimbulwinter",
      stats: "+40 armor\n+10 ability haste\n+1150 mana",
      explanation:
          "UNIQUE – AWE: Grants bonus armor equal to 3% maximum mana. Refunds 15% of mana spent.\nUNIQUE – FROZEN COLOSSUS: Immobilizing an enemy champion consumes mana and grants a shield for 3 seconds, absorbing 150 (+ 5% current mana) damage for every nearby enemy champion (10 second cooldown). This effect only activates while you have greater than 20% maximum mana.",
      cost: 0,
      sell: 1820,
      image: Image.asset('images/items/fimbul.png')),
  /*34*/ Item(
      name: "Manamune",
      stats: "+25 attack damage\n+10 ability haste\n+300 mana",
      explanation:
          "UNIQUE – AWE: Grants bonus attack damage equal to 1% maximum mana. Refunds 15% of mana spent.\nUNIQUE – MANA CHARGE: Grants a charge every 4 seconds, up to 3 charges. Each basic attack on-hit or mana expenditure consumes a charge and grants +8 mana, up to a maximum of 700 mana.\nTransforms into Muramana at +700 mana.",
      cost: 2700,
      sell: 1890,
      image: Image.asset('images/items/manamune.png')),
  /*35*/ Item(
      name: "Muramana",
      stats: "+25 attack damage\n+10 ability haste\n+1000 mana",
      explanation:
          "UNIQUE - AWE: Grants bonus attack damage equal to 1% maximum mana. Refunds 15% of mana spent.\UNIQUE – SHOCK: Basic attacks against enemy champions consume 3% of current mana to deal 6% current mana bonus physical damage. This effect only activates while you have greater than 20% maximum mana.",
      cost: 0,
      sell: 1890,
      image: Image.asset('images/items/muramana.png')),
  /*36*/ Item(
      name: "Umbral Glaive",
      stats: "+50 attack damage\n+10 ability haste",
      explanation:
          "UNIQUE – SABOTAGE: +10 armor penetration\nUNIQUE – BLACKOUT: When spotted by enemy wards or traps, gain Blackout for 8 seconds, disabling surrounding wards, as well as exposing stealthed wards and traps (60 second cooldown).",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/umbral.png')),
  /*37*/ Item(
      name: "Black Cleaver",
      stats: "+30 attack damage\n+25 ability haste\n+350 health",
      explanation:
          "UNIQUE – SUNDER: Dealing physical damage to an enemy champion reduces their armor by 4% for 6 seconds, stacking 6 times for 24% reduction.\nUNIQUE – RAGE: Basic attacks (on-hit) grant +20 flat movement speed for 2 seconds. Killing a unit grants +60 flat movement speed instead. Bonuses do not stack.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/blackcleaver.png')),
  /*38*/ Item(
      name: "Blade of the Ruined King",
      stats: "+30 attack damage\n+30% attack speed",
      explanation:
          "UNIQUE – THIRST: +10% Physical Vamp\nUNIQUE – RUINED STRIKES: Basic attacks deal 6% of target's current health bonus physical damage. Deals a minimum of 15 damage, and against monsters deals a maximum of 60 damage.\nUNIQUE – DRAIN: Hitting a champion with 3 basic attacks or abilities deals 30 − 100 (based on level) magic damage and steals 25% of their movement speed for 3 seconds (60 second cooldown).",
      cost: 3100,
      sell: 2170,
      image: Image.asset('images/items/bork.png')),
  /*39*/ Item(
      name: "Bloodthirster",
      stats: "+65 attack damage",
      explanation:
          "UNIQUE – BLOODY: +15% Physical Vamp\nUNIQUE – BLOODSWORN: Physical Vamp overheals you, generating a shield that absorbs up to 40 − 320 (based on level) damage. This shield decays out of combat over 10 seconds.",
      cost: 3400,
      sell: 2380,
      image: Image.asset('images/items/bloodthirster.png')),
  /*40*/ Item(
      name: "Death's Dance",
      stats: "+35 attack damage\n+15 ability haste\n+300 health",
      explanation:
          "UNIQUE – DANCE: +10% Physical Vamp\nUNIQUE – CAUTERIZE: 30% of damage taken is instead dealt as a bleed effect over 3 seconds.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/deathdance.png')),
  /*41*/ Item(
      name: "Duskblade of Draktharr",
      stats: "+50 attack damage\n+10 ability haste",
      explanation:
          "UNIQUE – RAZOR: +15 armor penetration\nUNIQUE – NIGHTSTALKER: After being unseen for at least 1 second, your next basic attack against an enemy champion deals 20 − 125 (based on level) bonus on-hit physical damage and slows them by 99% for 0.25 seconds. The enhanced attack lasts 5 seconds after being seen by an enemy champion.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/draktharr.png')),
  /*42*/ Item(
      name: "Infinity Edge",
      stats: "+60 attack damage\n+25% critical strike chance",
      explanation:
          "UNIQUE – INFINITY: Critical strikes deal 230% damage instead of 200%.",
      cost: 3400,
      sell: 2380,
      image: Image.asset('images/items/infinityedge.png')),
  /*43*/ Item(
      name: "Maw of Malmortius",
      stats: "+45 attack damage\n+10 ability haste\n+35 magic resistance",
      explanation:
          "UNIQUE – LIFELINE: If you would take magic damage that would reduce maximum health below 35%, you first gain a shield that absorbs 350 magic damage for 5 seconds (90 second cooldown).\nUNIQUE – LIFEGRIP: Triggering LIFELINE grants 30 attack damage, 10% Physical Vamp, and 10% Magical Vamp until out-of-combat.",
      cost: 3300,
      sell: 2310,
      image: Image.asset('images/items/malmortius.png')),
  /*44*/ Item(
      name: "Mortal Reminder",
      stats: "+45 attack damage",
      explanation:
          "UNIQUE – LAST WHISPER: +35% armor penetration\nUNIQUE – EXECUTIONER'S CALLING: Physical damage inflicts Grievous Wounds icon.png Grievous Wounds on enemy champions for 5 seconds.",
      cost: 2650,
      sell: 1855,
      image: Image.asset('images/items/mortalreminder.png')),
  /*45*/ Item(
      name: "Phantom Dancer",
      stats: "+45% attack speed\n+25% critical strike chance",
      explanation:
          "UNIQUE – SPECTRAL WALTZ: +5% movement speed\nUNIQUE – LIFELINE: If you would take damage that would reduce maximum health below 35%, you first gain a shield that absorbs 240 − 590 (based on level) for 5 seconds (90 second cooldown).",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/phantom.png')),
  /*46*/ Item(
      name: "Rapid Firecannon",
      stats: "+35% attack speed\n+25% critical strike chance",
      explanation:
          "UNIQUE – HUNTER'S SWIFTNESS: +5% movement speed\nUNIQUE – ENERGIZED: Moving and attacking generates Energy stacks. At maximum stacks your next attack deals 50 − 120 (based on level) bonus magic damage and activates all Energized effects.\nUNIQUE – FIRECANNON BARREL: Energy stacks charge 25% faster and Energized attacks have 150 bonus attack range. Melee attacks gain only 50 bonus range.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/rapid.png')),
  /*47*/ Item(
      name: "Runaan's Hurricane",
      stats: "+45% attack speed\n+25% critical strike chance",
      explanation:
          "UNIQUE – WIND'S FURY: Basic attacks strike 2 additional nearby enemies, each dealing 40% AD physical damage. These strikes can critically strike and trigger on-hit effects.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/runaan.png')),
  /*48*/ Item(
      name: "Statikk Shiv",
      stats: "+35% attack speed\n+25% critical strike chance",
      explanation:
          "UNIQUE – ELECTRIC: +5% movement speed\nUNIQUE – ENERGIZED: Moving and attacking generates Energy stacks. At maximum stacks your next basic attack deals 50 − 120 (based on level) bonus magic damage and activates all Energized effects.\nUNIQUE – SHIV LIGHTING: Energized attacks bounce up to 5 nearby enemies, and each hit can critically strike.",
      cost: 2800,
      sell: 1960,
      image: Image.asset('images/items/statikk.png')),
  /*49*/ Item(
      name: "Trinity Force",
      stats:
          "+20 attack damage\n+40% attack speed\n+25 ability haste\n+200 health\n+300 mana",
      explanation:
          "UNIQUE – FERVOR: +5% movement speed\nUNIQUE – SPELLBLADE: After using an ability, your next basic attack within 10 seconds deals 200% base AD bonus physical damage on-hit (1.5 second cooldown, begins after using the empowered attack).\nUNIQUE – RAGE: Basic attacks (on-hit) grant +20 flat movement speed for 2 seconds. Killing a unit grants +60 flat movement speed instead. Bonuses do not stack.",
      cost: 3733,
      sell: 2613,
      image: Image.asset('images/items/trinity.png')),
  /*50*/ Item(
      name: "Youmuu's Ghostblade",
      stats: "+50 attack damage\n+10 ability haste",
      explanation:
          "UNIQUE – SLICE: +10 armor penetration\nUNIQUE – MOMENTUM: Moving builds Momentum, granting a maximum of 50 bonus movement speed at 100 stacks. Basic attacks expend all Momentum to deal bonus magic damage equal to the number of stacks. Momentum decays while movement is impaired.\nUNIQUE – SPECTRAL HASTE: Basic attacks that expend maximum Momentum grant 25% bonus attack speed for 4 seconds.",
      cost: 3000,
      sell: 2100,
      image: Image.asset('images/items/youmuu.png')),
  /*51*/ Item(
      name: "Boots of Swiftness",
      stats: "+50 movement speed\nMovement speed slows are reduced by 30%.",
      explanation:
          "UNIQUE – SPRINT: Increases movement speed by 15% for 3 seconds. Dealing or taking damage from champions removes this effect (60 second cooldown).",
      cost: 1000,
      sell: 700,
      image: Image.asset('images/items/boswiftness.png')),
  /*52*/ Item(
      name: "Gluttonous Greaves",
      stats: "+40 movement speed\n+8% Physical Vamp\n+8% Magical Vamp",
      explanation:
          "UNIQUE – SPRINT: Increases movement speed by 15% for 3 seconds. Dealing or taking damage from champions removes this effect (60 second cooldown).",
      cost: 1000,
      sell: 700,
      image: Image.asset('images/items/gluttonous.png')),
  /*53*/ Item(
      name: "Ionian Boots of Lucidity",
      stats:
          "+40 movement speed\n+15 ability haste\nReduces summoner spell cooldowns by 10%.",
      explanation:
          "UNIQUE – SPRINT: Increases movement speed by 15% for 3 seconds. Dealing or taking damage from champions removes this effect (60 second cooldown).",
      cost: 1000,
      sell: 700,
      image: Image.asset('images/items/bolucidity.png')),
  /*54*/ Item(
      name: "Mercury's Treads",
      stats:
          "+40 movement speed\n+10 magic resistance\nReduces the duration of stuns, slows, taunts, fears, silences, blinds, and immobilizes by 30%",
      explanation:
          "UNIQUE – SPRINT: Increases movement speed by 15% for 3 seconds. Dealing or taking damage from champions removes this effect (60 second cooldown).",
      cost: 1000,
      sell: 700,
      image: Image.asset('images/items/mercury.png')),
  /*55*/ Item(
      name: "Ninja Tabi",
      stats:
          "+40 movement speed\n+10 armor\nBlocks 10% of damage from basic attacks.",
      explanation:
          "UNIQUE – SPRINT: Increases movement speed by 15% for 3 seconds. Dealing or taking damage from champions removes this effect (60 second cooldown).",
      cost: 1000,
      sell: 700,
      image: Image.asset('images/items/tabi.png')),
  /*56*/ Item(
      name: "Gargoyle Enchant",
      stats: "",
      explanation:
          "UNIQUE – STONEPLATE: Increase your maximum health by 40%, while reducing your damage dealt by 60% for 4 seconds. If there are 3 or more enemy champions nearby, increases maximum health by 100% instead (45 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/gargoyle.png')),
  /*57*/ Item(
      name: "Glorius Enchant",
      stats: "",
      explanation:
          "UNIQUE – GLORY: Gain 15% bonus movement speed for 4 seconds, increasing to 60% towards enemy champions or turrets. After 4 seconds or upon reaching an enemy champion emits a shockwave that slows nearby enemies by 50% for 2 seconds (45 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/glorius.png')),
  /*58*/ Item(
      name: "Locket Enchant",
      stats: "",
      explanation:
          "UNIQUE – LOCKET: Shield yourself and all nearby allied champions from 140 − 420 (based on level) damage for 2.5 seconds (60 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/locket.png')),
  /*59*/ Item(
      name: "Protobelt Enchant",
      stats: "",
      explanation:
          "UNIQUE – PROTOBELT: Dash forward and unleash a cone of missiles that deal 75 − 145 (based on level) magic damage. If champions or monsters are hit by more than one missile, the additional missiles deal only 10% damage (60 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/protobelt.png')),
  /*60*/ Item(
      name: "Quicksilver Enchant",
      stats: "",
      explanation:
          "UNIQUE – QUICKSILVER: Removes all crowd control effects currently affecting you, and gain 50% bonus movement speed for 1.5 seconds (60 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/quicksilver.png')),
  /*61*/ Item(
      name: "Redeeming Enchant",
      stats: "",
      explanation:
          "UNIQUE – REDEEM: Reveal a position and after 2.5 seconds, a beam of light heals allies for 25 − 375 (based on level), while enemies take 10% of their maximum health as true damage. Minions and monsters take 250 true damage instead (60 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/redeeming.png')),
  /*62*/ Item(
      name: "Shadows Enchant",
      stats: "",
      explanation:
          "UNIQUE – SHADOWS: Summons 2 ghosts that seek out nearby enemy champions. On contact, a champion is revealed and slowed by 40% for up to 5 seconds, based upon travel time (60 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/shadows.png')),
  /*63*/ Item(
      name: "Stasis Enchant",
      stats: "",
      explanation:
          "UNIQUE – STASIS: Put yourself in stasis for 2.5 seconds, rendering yourself untargetable and invulnerable for the duration but becoming unable to move, declare basic attacks, cast abilities or item actives, or use any summoner spells during this time (120 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/stasis.png')),
  /*64*/ Item(
      name: "Teleport Enchant",
      stats: "",
      explanation:
          "UNIQUE – TELEPORT: After channeling for 3.5 seconds, teleport your champion to an allied champion, structure, or ward (180 second cooldown).",
      cost: 500,
      sell: 0,
      image: Image.asset('images/items/teleport.png')),
];
