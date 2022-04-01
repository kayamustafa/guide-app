import 'package:flutter/material.dart';

class Rune {
  final String name;
  final String explanation;
  final Image image;
  Rune({this.name, this.explanation, this.image});
}

List<Rune> keystoneRunes = [
  /*0*/ Rune(
      name: "Electrocute",
      explanation:
          "Hitting a champion with 3 seperate attacks or abilities in 3s deals bonus adaptive damage.",
      image: Image.asset("images/runes/keystones/electrocute.png",
          fit: BoxFit.cover)),
  /*1*/ Rune(
      name: "Conqueror",
      explanation:
          "Gain stacks of Adaptive Force when hitting a champion with separate attacks or abilities. Stack up to 5 times. When fully stacked, deal bonus adaptive damage to champions.",
      image: Image.asset("images/runes/keystones/conq.png", fit: BoxFit.cover)),
  /*2*/ Rune(
      name: "Fleet Footwork",
      explanation:
          "Moving attacking and casting builds Energy stacks. At 100 stacks, your next attack heals you and grants increased movement speed.",
      image:
          Image.asset("images/runes/keystones/fleet.png", fit: BoxFit.cover)),
  /*3*/ Rune(
      name: "Aery",
      explanation:
          "Your attacks and abilities send Aery to a target, damaging enemies or shielding allies.",
      image: Image.asset("images/runes/keystones/aery.png", fit: BoxFit.cover)),
  /*4*/ Rune(
      name: "Kleptomancy",
      explanation:
          "After using an ability, your next ability hit or attack on an enemy champion will grant you a random item effect.",
      image:
          Image.asset("images/runes/keystones/klepto.png", fit: BoxFit.cover)),
  /*5*/ Rune(
      name: "Aftershock",
      explanation:
          "After immobilizing an enemy champion, gain defenses and later deal a burst of magic damage around you.",
      image: Image.asset("images/runes/keystones/aftershock.png",
          fit: BoxFit.cover)),
  /*6*/ Rune(
      name: "Grasp of the Undying",
      explanation:
          "Every 4s in  combat, your next attack on a champion will be enhanced based on your max health.",
      image:
          Image.asset("images/runes/keystones/grasp.png", fit: BoxFit.cover)),
  /*7*/ Rune(
      name: "Font of Life",
      explanation:
          "Imparing the movement of an enemy champion marks them. Allies who attack marked champions heal based on your health.",
      image: Image.asset("images/runes/keystones/font.png", fit: BoxFit.cover))
];

List<Rune> dominationRunes = [
  /*0*/ Rune(
      name: "Brutal",
      explanation:
          "PASSIVE: Gain 7 bonus Attack Damage and 2% bonus-armor penetration, or 14 Ability Power and 2% bonus-magic penetration (Adaptive).",
      image: Image.asset("images/runes/domination/brutal.png")),
  /*1*/ Rune(
      name: "Gathering Storm",
      explanation:
          "PASSIVE: Every 2 minutes, gain 2 bonus Attack Damage or 4 Ability Power (Adaptive).",
      image: Image.asset("images/runes/domination/champion.png")),
  /*2*/ Rune(
      name: "Hunter - Vampirism",
      explanation:
          "PASSIVE: Gain 2% Physical Vamp or 2% Magical Vamp (Adaptive). Unique champion takedowns grant 2 bonus Attack Damage with 1% Physical Vamp or 4 Ability Power with 1% Magical Vamp (Adaptive).",
      image: Image.asset("images/runes/domination/vampirism.png")),
  /*3*/ Rune(
      name: "Triumph",
      explanation:
          "PASSIVE: Champion takedowns restore 10% missing health. Deal 3% increased damage to enemies below 35% health.",
      image: Image.asset("images/runes/domination/triumph.png")),
  /*4*/ Rune(
      name: "Weakness",
      explanation:
          "PASSIVE: Slowing or immobilizing an enemy champion marks them for 5 seconds, while marked they take 5% increased damage.",
      image: Image.asset("images/runes/domination/weakness.png")),
  /*5*/ Rune(
      name: "Champion",
      explanation:
          "PASSIVE: Gain 10% increased damage against champions. Lose 5% each time you die until the bonus disappears.",
      image: Image.asset("images/runes/domination/champion.png")),
];
List<Rune> resolveRunes = [
  /*0*/ Rune(
      name: "Blackbone",
      explanation:
          "PASSIVE: Gain 10 bonus armor or 10 bonus magic resistance, based on whichever stat you have less of.",
      image: Image.asset("images/runes/resolve/blackbone.png")),
  /*1*/ Rune(
      name: "Conditioning",
      explanation:
          "PASSIVE: Gain 8 bonus armor and 8 bonus magic resistance after 5 minutes of game time.",
      image: Image.asset("images/runes/resolve/conditioning.png")),
  /*2*/ Rune(
      name: "Hunter - Titan",
      explanation:
          "PASSIVE: Gain 20 maximum health. Unique champion takedowns grant an additional 20 maximum health and 4% tenacity.",
      image: Image.asset("images/runes/resolve/titan.png")),
  /*3*/ Rune(
      name: "Regeneration",
      explanation:
          "PASSIVE: Every 3 seconds, regenerates 2% missing health or 2% missing mana, based on whichever percentage is lower.",
      image: Image.asset("images/runes/resolve/regeneration.png")),
  /*4*/ Rune(
      name: "Loyalty",
      explanation:
          "PASSIVE: Gain 2 bonus armor and 5 bonus magic resistance. Your closest ally champion gains 5 bonus armor and 2 bonus magic resistance, which can be stacked.",
      image: Image.asset("images/runes/resolve/loyalty.png")),
  /*5*/ Rune(
      name: "Spirit Walker",
      explanation: "PASSIVE: Gain 50 maximum health and 20% slow resistance.",
      image: Image.asset("images/runes/resolve/spiritwalker.png")),
];
List<Rune> inspirationRunes = [
  /*0*/ Rune(
      name: "Pathfinder",
      explanation:
          "PASSIVE: When out-of-combat, gain 8% bonus movement speed in brush, jungle and river.",
      image: Image.asset("images/runes/inspiration/pathfinder.png")),
  /*1*/ Rune(
      name: "Mastermind",
      explanation:
          "PASSIVE: Deal 10% bonus true damage to epic monsters and turrets. Earn an additional 100 gold Gold 100 gold and 500 XP upon taking or assisting in taking these objectives.",
      image: Image.asset("images/runes/inspiration/mastermind.png")),
  /*2*/ Rune(
      name: "Hunter - Genius",
      explanation:
          "PASSIVE: Gain 2.5% cooldown reduction. Unique champion takedowns grant 1.5% cooldown reduction.",
      image: Image.asset("images/runes/inspiration/genius.png")),
  /*3*/ Rune(
      name: "Sweet Tooth",
      explanation:
          "PASSIVE: Increases Honeyfruit Honeyfruit healing by 25%, each fruit eaten also provides 20 gold Gold 20 gold.",
      image: Image.asset("images/runes/inspiration/sweettooth.png")),
  /*4*/ Rune(
      name: "Pack Hunter",
      explanation:
          "PASSIVE: While near ally champions, gain 2% bonus movement speed. For each unique ally you participate in a takedown with, you gain 50 gold Gold 50 gold and the ally gains 50 gold Gold 50 gold.",
      image: Image.asset("images/runes/inspiration/packhunter.png")),
  /*5*/ Rune(
      name: "Manaflow Band",
      explanation:
          "PASSIVE: Hitting an enemy champion with an ability or empowered attack permanently increases your maximum mana by 30, up to 300 mana.",
      image: Image.asset("images/runes/inspiration/manaflow.png")),
];
