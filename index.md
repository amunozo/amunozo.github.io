---
layout: default
title: AI engineer and researcher
permalink: /
description: Alberto Muñoz-Ortiz, AI engineer and researcher in Lausanne. PhD in Computer Science. Research on how language models encode linguistic structure, multilingual and dialect NLP, and human vs. LLM-generated text.
---

<section class="research-hero" aria-labelledby="about">
  <div class="about-profile">
  <img class="profile-portrait" src="{{ '/assets/images/alberto.jpg' | relative_url }}" alt="Alberto Muñoz-Ortiz" width="288" height="384">
  <h2 id="about">About me</h2>
  <p class="research-background">I am an AI engineer and researcher based in Lausanne. I completed my PhD in Computer Science at the University of A Coruña in June 2026, and was a Visiting Researcher at LMU Munich and EPFL. Before that, I studied Physics (BSc, Complutense University of Madrid) and Language Technologies (MSc, UNED).</p>
  <p class="research-background">Most of my research is about evaluating language models: how they handle perturbed input, dialects, and languages they rarely saw in training, and how LLM-generated text differs from human writing.</p>
  <p class="research-background">I am looking for roles in Switzerland or remote. Available immediately; EU citizen.</p>
  <div class="hero-actions">
    <a class="btn" href="{{ '/cv.pdf' | relative_url }}">View CV (PDF)</a>
    <a class="btn btn-secondary" href="mailto:alberto.munoz.ortiz@proton.me">Email me</a>
    <div class="hero-socials">
      <a href="https://github.com/amunozo">GitHub</a>
      <a href="https://www.linkedin.com/in/alberto-mu%C3%B1oz-ortiz-683470106/">LinkedIn</a>
      <a href="https://scholar.google.com/citations?user=sS5dz4QAAAAJ">Scholar</a>
    </div>
  </div>
  </div>
</section>

<h2 id="projects" class="publications-heading">Projects</h2>

<section class="publication-year">
  <h2>2026</h2>
  <ul class="pub-list">
    <li>
      <h3><a href="https://github.com/amunozo/jobfacts">jobfacts: job-posting pipeline with measured LLM extraction</a></h3>
      <p class="pub-venue">Collects AI and data job postings daily from about 170 employer job boards into PostgreSQL. An LLM fills a fixed schema per posting (work mode, remote from Switzerland, language level, seniority), each value with the sentence from the posting that supports it, so every fact can be checked. On a held-out set of 50 postings in English, German, and French, the extracted fields are 90–100% correct. Built with coding agents under my direction.</p>
      <p class="pub-code"><a href="https://github.com/amunozo/jobfacts">View code</a></p>
    </li>
    <li>
      <h3><a href="https://github.com/amunozo/apertus-swissgov-rsd">Reading Cross-Lingual Semantic Differences from Apertus</a></h3>
      <p class="pub-authors"><strong>Winner of Hack Apertus 2026, Track 2A.</strong> Solo submission to the UZH SwissGov-RSD challenge.</p>
      <p class="pub-venue">Scores each word of parallel Swiss government web pages (English vs. German, French, and Italian) for how much its meaning differs from the other version, using Apertus 8B as a frozen reader. Middle-layer hidden-state alignment and contrastive surprisal, combined by a logistic regression head, reach 37.4 Spearman on the held-out test, vs. 17.1 for the best released baseline.</p>
      <p class="pub-code"><a href="https://github.com/amunozo/apertus-swissgov-rsd">View code</a> <a href="https://github.com/amunozo/apertus-swissgov-rsd/blob/main/track_2a/technical_report.md">Technical report</a> <a href="https://www.amunozo.com/apertus-swissgov-rsd/track_2a/docs/heatmaps/">Interactive heatmaps</a></p>
    </li>
  </ul>
</section>

<h2 id="publications" class="publications-heading">Publications</h2>

<section class="publication-year publication-year--selected">
  <h2>Selected</h2>
  <ul class="pub-list">
    <li>
      <h3><a href="https://link.springer.com/article/10.1007/s10462-024-10903-2">Contrasting Linguistic Patterns in Human and LLM-Generated News Text</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Carlos Gómez-Rodríguez, and David Vilares.</p>
      <p class="pub-venue">Artificial Intelligence Review, 2024. 267 citations; cited in <a href="https://www.theguardian.com/commentisfree/2026/apr/14/ai-language-human-speech">The Guardian</a>.</p>
      <p class="pub-venue">Compares human news text with the output of six LLMs. Negative emotions rose with model size, and five of the six models amplified the sexist bias found in human text.</p>
      <p class="pub-code"><a href="https://github.com/amunozo/linguistic_patterns_LLMs" aria-label="Code for Contrasting Linguistic Patterns in Human and LLM-Generated News Text">View code</a></p>
    </li>
    <li>
      <h3><a href="https://aclanthology.org/2025.coling-main.427/">Evaluating Pixel Language Models on Non-Standardized Languages</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Verena Blaschke, and Barbara Plank.</p>
      <p class="pub-venue">COLING 2025.</p>
      <p class="pub-venue">Pretrains a tokenizer-free pixel language model on German and tests transfer to Swiss German, Bavarian, Alsatian, and Low Saxon. It beat token-based models on POS tagging, parsing, and intent detection, by up to 26 points in some settings.</p>
      <p class="pub-code"><a href="https://huggingface.co/amunozo/pixel-base-german" aria-label="Model for Evaluating Pixel Language Models on Non-Standardized Languages">Model on Hugging Face</a></p>
    </li>
  </ul>
</section>

<section class="publication-year">
  <h2>2025</h2>
  <ul class="pub-list">
    <li>
      <h3><a href="https://aclanthology.org/2025.findings-emnlp.530/">Nested Named Entity Recognition as Single-Pass Sequence Labeling</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, David Vilares, Caio Corro, and Carlos Gómez-Rodríguez.</p>
      <p class="pub-venue">Findings of EMNLP 2025, Suzhou, China.</p>
      <p class="pub-code"><a href="https://github.com/amunozo/nner_as_sl" aria-label="Code for Nested Named Entity Recognition as Single-Pass Sequence Labeling">View code</a></p>
    </li>
    <li>
      <h3><a href="https://aclanthology.org/2025.coling-main.427/">Evaluating Pixel Language Models on Non-Standardized Languages</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Verena Blaschke, and Barbara Plank.</p>
      <p class="pub-venue">COLING 2025, Abu Dhabi, UAE.</p>
      <p class="pub-code"><a href="https://huggingface.co/amunozo/pixel-base-german" aria-label="Model for Evaluating Pixel Language Models on Non-Standardized Languages">Model on Hugging Face</a></p>
    </li>
    <li>
      <h3><a href="http://journal.sepln.org/sepln/ojs/ojs/index.php/pln/article/view/6673">On the Impact of Syntactic Infusion for Gender Categorization Across Contextual Dimensions</a></h3>
      <p class="pub-authors">Inés Veiga Menéndez, <strong>Alberto Muñoz-Ortiz</strong>, and David Vilares.</p>
      <p class="pub-venue">Revista de Procesamiento de Lenguaje Natural, 2025.</p>
    </li>
  </ul>
</section>

<section class="publication-year">
  <h2>2024</h2>
  <ul class="pub-list">
    <li>
      <h3><a href="https://link.springer.com/article/10.1007/s10462-024-10903-2">Contrasting Linguistic Patterns in Human and LLM-Generated News Text</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Carlos Gómez-Rodríguez, and David Vilares.</p>
      <p class="pub-venue">Artificial Intelligence Review, 2024.</p>
      <p class="pub-code"><a href="https://github.com/amunozo/linguistic_patterns_LLMs" aria-label="Code for Contrasting Linguistic Patterns in Human and LLM-Generated News Text">View code</a></p>
    </li>
    <li>
      <h3><a href="https://portalinvestigacion.udc.gal/documentos/67e30317d40c1252cde1f95d?lang=gl">Demographic Background Prompting Does Not Affect Linguistic Features on LLM-Generated News Texts</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Carlos Gómez-Rodríguez, and David Vilares.</p>
      <p class="pub-venue">XoveTIC 2024.</p>
    </li>
  </ul>
</section>

<section class="publication-year">
  <h2>2023</h2>
  <ul class="pub-list">
    <li>
      <h3><a href="https://aclanthology.org/2023.ijcnlp-main.23/">Assessment of Pre-Trained Models Across Languages and Grammars</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Carlos Gómez-Rodríguez, and David Vilares.</p>
      <p class="pub-venue">IJCNLP-AACL 2023, Bali, Indonesia.</p>
    </li>
    <li>
      <h3><a href="https://ruc.udc.es/dspace/handle/2183/33478">LyS A Coruña at GUA-SPA@IberLEF2023: Multi-Task Learning with Large Language Model Encoders for Guarani-Spanish Code Switching Analysis</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong> and David Vilares.</p>
      <p class="pub-venue">IberLEF 2023, Jaén, Spain.</p>
    </li>
    <li>
      <h3><a href="https://aclanthology.org/2023.findings-acl.459/">Another Dead End for Morphological Tags? Perturbed Inputs and Parsing</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong> and David Vilares.</p>
      <p class="pub-venue">Findings of ACL 2023, Toronto, Canada.</p>
    </li>
  </ul>
</section>

<section class="publication-year">
  <h2>2022</h2>
  <ul class="pub-list">
    <li>
      <h3><a href="https://aclanthology.org/2022.aacl-short.16/">Parsing Linearizations Appreciate PoS Tags – but Some Are Fussy about Errors</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Mark Anderson, David Vilares, and Carlos Gómez-Rodríguez.</p>
      <p class="pub-venue">IJCNLP-AACL 2022, Online.</p>
    </li>
    <li>
      <h3><a href="https://aclanthology.org/2022.insights-1.7/">Cross-lingual Inflection as a Data Augmentation Method</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Carlos Gómez-Rodríguez, and David Vilares.</p>
      <p class="pub-venue">3rd Workshop on Insights from Negative Results in NLP, Dublin, Ireland.</p>
    </li>
  </ul>
</section>

<section class="publication-year publication-year--last">
  <h2>2021</h2>
  <ul class="pub-list">
    <li>
      <h3><a href="https://aclanthology.org/2021.ranlp-1.111/">Not All Linearizations Are Equally Data-Hungry in Sequence Labeling Parsing</a></h3>
      <p class="pub-authors"><strong>Alberto Muñoz-Ortiz</strong>, Michalina Strzyz, and David Vilares.</p>
      <p class="pub-venue">RANLP 2021, Online.</p>
    </li>
  </ul>
</section>

<section class="home-section" aria-labelledby="education">
  <h2 id="education">Education</h2>
  <ul class="edu-list">
    <li>
      <p><strong>Doctorate (PhD) in Computer Science</strong>. University of A Coruña, 2021–2026.</p>
      <p class="research-thesis">Thesis: <em>"Encoding, Representation, and Interpretation of Linguistic Structure Across NLP Paradigms"</em>. <a href="https://www.udc.gal/en/teses/tese/?codigo=n2223">Thesis record</a>.</p>
    </li>
    <li>
      <p><strong>MSc in Language Technologies</strong>. Universidad Nacional de Educación a Distancia (UNED), 2020–2021.</p>
    </li>
    <li>
      <p><strong>BSc in Physics</strong>. Complutense University of Madrid, 2014–2019.</p>
    </li>
  </ul>
</section>
