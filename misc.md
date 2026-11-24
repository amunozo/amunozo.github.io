---
layout: default
title: Misc
permalink: /misc/
description: Random ideas I decided to build.
---

<section class="research-hero" aria-labelledby="misc-heading">
  <h1 id="misc-heading">Misc</h1>
  <p class="research-intro">Random ideas I decided to build.</p>
</section>

<!-- Grid is 2 columns in assets/css/style.css (.misc-grid); switch to 3 columns once there are 5+ items (or 4 with shorter cards). -->
<ul class="misc-grid">
  <li class="misc-card">
    <a class="misc-card__media" href="{{ '/talon-food-atlas/' | relative_url }}">
      <img src="{{ '/talon-food-atlas/og.png' | relative_url }}" alt="Talon Food Atlas tier list preview" loading="lazy">
    </a>
    <div class="misc-card__body">
      <h2><a href="{{ '/talon-food-atlas/' | relative_url }}">Talon Food Atlas</a></h2>
      <p class="misc-card__desc">Unofficial interactive atlas of Talon Fitness's Nutrition Tier Lists: 813 food placements across 26 food groups from 30 episodes, with timestamped episode links, nutrition cards, and short summaries of each ranking.</p>
      <p class="misc-card__links"><a href="{{ '/talon-food-atlas/' | relative_url }}">Open atlas</a> <a href="https://github.com/amunozo/talon-food-atlas">View code</a></p>
    </div>
  </li>
  <li class="misc-card">
    <a class="misc-card__media" href="https://petanque.amunozo.com/">
      <img src="{{ '/assets/images/misc/petanque.png' | relative_url }}" alt="Pétanque game preview showing boules on a village square court" loading="lazy">
    </a>
    <div class="misc-card__body">
      <h2><a href="https://petanque.amunozo.com/">Pétanque</a></h2>
      <p class="misc-card__desc">Web pétanque game built with Three.js and TypeScript. Practice alone, play a friend on the same device, or take on the computer.</p>
      <p class="misc-card__links"><a href="https://petanque.amunozo.com/">Play</a> <a href="https://github.com/amunozo/petanque">View code</a></p>
    </div>
  </li>
</ul>
