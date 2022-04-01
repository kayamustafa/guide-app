import 'package:flutter/material.dart';

class Spell {
  final String name;
  final String explanation;
  final Image image;
  Spell({this.name, this.explanation, this.image});
}

List<Spell> spells = [
  /*0*/ Spell(
      name: "Flash",
      explanation:
          "Teleport a short distance forward or towards the aimed direction (150 second cooldown).",
      image: Image.asset('images/spells/Flash.png')),
  /*1*/ Spell(
      name: "Ignite",
      explanation:
          "Ignites target enemy champion, dealing 60 − 410 (based on level) true damage over 5 seconds and inflincting them with Grievous Wounds, reducing healing effects by 50% (90 second cooldown).",
      image: Image.asset('images/spells/Ignite.png')),
  /*2*/ Spell(
      name: "Smite",
      explanation:
          "Deal 440 − 1000 (based on level) true damage to a large or epic monster or minion (10 second cooldown). Smiting monsters restore 70 (+ 10% maximum health) health. Slaying 4 large monsters upgrades Smite to Chilling Smite or Challenging Smite which can target enemy champions.",
      image: Image.asset("images/spells/Smite.png")),
  /*3*/ Spell(
      name: "Ghost",
      explanation:
          "Gain a large burst of movement speed that decays to 25% bonus movement speed for 6 seconds (90 second cooldown).",
      image: Image.asset('images/spells/Ghost.png')),
  /*4*/ Spell(
      name: "Barrier",
      explanation:
          "Gain a shield that absorbs 115 − 465 (based on level) damage for 2 seconds (90 second cooldown).",
      image: Image.asset("images/spells/Barrier.png")),
  /*5*/ Spell(
      name: "Exhaust",
      explanation:
          "Exhausts target enemy champion, reducing their movement speed by 20% and their damage dealt by 40% for 2.5 seconds (105 second cooldown).",
      image: Image.asset("images/spells/Exhaust.png")),
  /*6*/ Spell(
      name: "Heal",
      explanation:
          "Restore 80 − 360 (based on level) health and grants 30% bonus movement speed for 1 second to you and the most wounded nearby ally champion (120 second cooldown). Healing is halved for champions recently affected by Heal.",
      image: Image.asset("images/spells/Heal.png"))
];
