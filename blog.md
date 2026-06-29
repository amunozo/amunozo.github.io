---
layout: default
title: Blog
permalink: /blog/
description: Notes on NLP, research engineering, and language technology.
---

<section class="blog-hero">
  <p class="section-kicker">Writing and notes</p>
  <h1>Blog</h1>
  <p class="blog-intro">Short essays, technical notes, and project write-ups on NLP, research engineering, and multilingual language technology.</p>
</section>

{% if site.posts.size > 0 %}
<section aria-label="Blog posts">
  <ul class="post-list">
    {% for post in site.posts %}
    <li class="post-card">
      <p class="post-card__meta">{{ post.date | date: "%B %-d, %Y" }}</p>
      <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      {% if post.excerpt %}
      <p>{{ post.excerpt | strip_html }}</p>
      {% endif %}
      <a class="post-readmore" href="{{ post.url | relative_url }}">Read post</a>
    </li>
    {% endfor %}
  </ul>
</section>
{% else %}
<p>No posts yet.</p>
{% endif %}
