---
status: permanent
type: concept
area: tech
related: []
source: original
title: "Embeds"
date: '2026-09-30'
updated: 2026-09-30T16:28
tags: []
---
[[Home MOC|Home]] / [[Atlas]] / [[Embeds]]

# Embeds reference

~~~markdown
![[Note Name]]
![[Note Name#Heading]]
![[Note Name#^block-id]]

![[image.png]]
![[image.png|640x480]]
![[image.png|300]]

![[audio.mp3]]
![[video.mp4]]

![[document.pdf]]
![[document.pdf#page=3]]
![[document.pdf#height=400]]
~~~

A list embed needs a block ID after the list. An embedded search uses an
Obsidian query block:

~~~~markdown
~~~query
tag:#project status:done
~~~
~~~~
