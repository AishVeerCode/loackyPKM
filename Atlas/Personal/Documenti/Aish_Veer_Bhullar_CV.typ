
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Aish Veer Bhullar"
#let locale-catalog-page-numbering-style = context { "Aish Veer Bhullar - Pagina " + str(here().page()) + " di " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Aggiornato a Nov 2026"
#let locale-catalog-language = "it"
#let design-page-size = "a4"
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 0, 0)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 0, 0)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(0, 0, 0)
#let design-section-titles-font-family = "XCharter"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.15em
#let design-section-titles-type = "with-full-line"
#let design-section-titles-vertical-space-above = 0.34cm
#let design-section-titles-vertical-space-below = 0.17cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 9.35pt
#let design-text-leading = 0.54em
#let design-text-font-family = "XCharter"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = false
#let design-header-name-font-family = "XCharter"
#let design-header-name-font-size = 22pt
#let design-header-name-bold = true
#let design-header-small-caps-for-name = false
#let design-header-connections-font-family = "XCharter"
#let design-header-vertical-space-between-name-and-connections = 0.24cm
#let design-header-vertical-space-between-connections-and-first-section = 0.32cm
#let design-header-use-icons-for-connections = false
#let design-header-horizontal-space-between-connections = 0.45cm
#let design-header-separator-between-connections = "|"
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-nested-bullet = "-"
#let design-highlights-top-margin = 0.1cm
#let design-highlights-left-margin = 0cm
#let design-highlights-vertical-space-between-highlights = 0.09cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.3em
#let design-entries-vertical-space-between-entries = 0.28cm
#let design-entries-date-and-location-width = 3.6cm
#let design-entries-allow-page-break-in-entries = false
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0cm
#let design-page-top-margin = 1.1cm
#let design-page-bottom-margin = 1.1cm
#let design-page-left-margin = 1.2cm
#let design-page-right-margin = 1.2cm
#let design-page-show-last-updated-date = false
#let design-page-show-page-numbering = false
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-nested-bullet,
  spacing: design-highlights-vertical-space-between-highlights,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let bullet-entry(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: 0pt,
    indent: 0pt,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #if design-header-small-caps-for-name [
    #smallcaps(it.body)
  ] else [
    #it.body
  ]
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-partial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Aish Veer Bhullar

// Print connections:
#let connections-list = (
  [Roma, Italia],
  [#box(original-link("mailto:aishveersinghbhullar@gmail.com")[aishveersinghbhullar\@gmail.com])],
  [#box(original-link("https://github.com/AishVeerCode")[github.com\/AishVeerCode])],
  [#box(original-link("https://linkedin.com/in/aish-veer-bhullar")[linkedin.com\/in\/aish-veer-bhullar])],
)
#connections(connections-list)



== Education
#block(
  [


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Sapienza Università di Roma \(Roma 1\)], B.Sc. in Ingegneria Informatica — #emph[Roma, Italia]
  ],
  right-content: [
    Set 2025 – Presente
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Consolidato le fondamenta teorico-applicative in analisi, logica e programmazione su #strong[3 moduli core] \(#emph[Fondamenti di Matematica, Introduzione alla Programmazione, Probabilità e Statistica]\), sviluppando algoritmi numerici e strutture dati in #strong[Python] e #strong[Jupyter Notebook].],[Validato la correttezza computazionale di script iterativi e funzioni di manipolazione stringhe\/liste con #strong[0 errori di runtime], applicando i principi dell'architettura di Von Neumann, dell'aritmetica binaria in complemento a due e del debugging sistematico.],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Liceo Scientifico Statale \"Louis Pasteur\"], Diploma \(93\/100\) in Indirizzo Scientifico — #emph[Roma, Italia]
  ],
  right-content: [
    Set 2020 – Lug 2025
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Conseguito il Diploma di Maturità Scientifica nel #strong[top tier del corso] con votazione #strong[93\/100], padroneggiando per #strong[5 anni] calcolo differenziale\/integrale, fisica elettromagnetica e modellazione matematica.],[Raggiunto la #strong[Fase Regionale delle Olimpiadi della Matematica] nell'anno conclusivo dopo #strong[3 qualificazioni consecutive] nel triennio, risolvendo problemi competitivi di combinatoria, teoria dei numeri e geometria euclidea.],[Acquisito padronanza esecutiva avanzata nella #strong[Chitarra Classica] al termine di #strong[3 anni] di formazione musicale strutturata \(scuole secondarie di I grado\), applicando studio metodico della partitura polifonica e disciplina solistica.],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)


  ],
  breakable: false,
  inset: (
    left: 0cm,
    right: 0cm,
  ),
  width: 100%,
)

== Technical Skills
#block(
  [


#one-col-entry(
  content: [#strong[Linguaggi & Markup:] Python \(Algoritmi, Strutture Dati, Scripting, Automazione\), Markdown, YAML, Typst, LaTeX \(XeLaTeX\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Strumenti & DevOps:] Git, GitHub, Jupyter Notebook, Visual Studio Code, Unix\/macOS Shell \(zsh\/bash\), Obsidian PKM, RenderCV]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Software Scientifico:] MaxIm DL \(Elaborazione Immagini CCD e Fotometria\), Stellarium \(Simulazione Astrometrica\), Ottica]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Domini & Lingue:] Problem Solving Olimpico, Logica Proposizionale, Aerodinamica e Meccanica del Volo, Spettroscopia | Italiano \(Madrelingua\), Inglese \(Tecnico\), Punjabi\/Hindi \(Bilingue\)]
)

  ],
  breakable: false,
  inset: (
    left: 0cm,
    right: 0cm,
  ),
  width: 100%,
)

== Projects
#block(
  [


#two-col-entry(
  left-content: [
    #strong[Prototipo Razzo Idropneumatico — Water Rocket Hackathon \(Team TETI\)] — #emph[SRT, SASA & Studio 5T]
  ],
  right-content: [
    Mag 2024
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Progettato e lanciato con successo un prototipo di razzo ad acqua funzionante entro il limite tassativo di #strong[72 ore] \(27–29 Maggio 2024\), dimensionando camera di pressione e ugello secondo l'equazione del razzo di Tsiolkovsky e le leggi dell'idrodinamica.],[Massimizzato l'apogeo balistico e la stabilità direzionale di volo sul #strong[100\% dei test di lancio], ottimizzando il rapporto volumetrico acqua\/aria compressa, il centro di pressione e la geometria delle superfici di impennaggio.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Fotometria Stellare e Diagramma H-R \(Astronomia al Pasteur\)] — #emph[A.R.A. & Osservatorio Frasso Sabino]
  ],
  right-content: [
    Nov 2023 – Apr 2024
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Ricostruito il #strong[Diagramma di Hertzsprung-Russell \(H-R\)] di un ammasso stellare aperto ottenendo la valutazione massima \(#strong[Ottimo] su #strong[30 ore] certificate RUNTS\), elaborando immagini astronomiche grezze e curve fotometriche tramite #strong[MaxIm DL].],[Calibrato i parametri ottici, spettrali e astrometrici delle sessioni osservative con il #strong[100\% di accuratezza di puntamento], incrociando le rilevazioni strumentali al telescopio con le effemeridi simulate su #strong[Stellarium].],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Sistemi Aerospaziali e Dinamica del Volo \(Progetto PCTO\)] — #emph[Università degli Studi Roma Tre]
  ],
  right-content: [
    Dic 2023 – Apr 2024
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Ottenuto il livello di competenza massimo \(#strong[Livello 4\/4 — Ottimo]\) su un percorso intensivo di #strong[60 ore] \(#strong[17 settimane]\) presso il Dip. di Ingegneria, classificando architetture strutturali, impianti di propulsione e superfici di comando dei velivoli.],[Modellato le polari aerodinamiche di portanza\/resistenza e le equazioni di equilibrio longitudinale, verificando i regimi di volo attraverso lo studio degli apparati sperimentali sotto la guida del Ricercatore Dott. Jacopo Serafini.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Architettura PKM & Document Automation Pipeline \(loackyPKM\)] — #emph[GitHub \(\@AishVeerCode\)]
  ],
  right-content: [
    Set 2025 – Presente
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Architettato un sistema #emph[Knowledge-as-Code] versionato su #strong[Git] con oltre #strong[100 note tecniche strutturate], riducendo i tempi di indicizzazione e revisione accademica mediante script #strong[Python] di linting YAML \(10 campi\) e verifica dei grafi.],[Automatizzato la generazione tipografica di documenti tecnici e CV single-page con compilazione #strong[sub-secondo \(< 1 s\)], integrando pipeline multi-engine basate su #strong[RenderCV], #strong[Typst] \(#emph[Brilliant-CV]\) e #strong[XeLaTeX] \(#emph[Awesome-CV]\).],)
  ],
)


  ],
  breakable: false,
  inset: (
    left: 0cm,
    right: 0cm,
  ),
  width: 100%,
)

== Experience
#block(
  [


#two-col-entry(
  left-content: [
    #strong[Addetto Panetteria e Gastronomia \(Part-Time\)], PIM Supermercati \(Buscaini Angelo S.r.l.\) — #emph[Roma]
  ],
  right-content: [
    Set 2023 – Presente
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Garantito l'operatività continua dei reparti panetteria e gastronomia per #strong[18 ore\/settimana] \(somministrazione Ali S.p.A., 4° livello CCNL Commercio, oltre 15 dipendenti\) con il #strong[100\% di conformità HACCP], gestendo panificazione, taglio e tracciabilità lotti.],[Sostenuto ritmi operativi ad alta intensità nei weekend per oltre #strong[2 anni consecutivi] senza flessioni nel rendimento accademico \(#strong[93\/100] alla Maturità\), ottimizzando la pianificazione delle forniture e i tempi di servizio al banco.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Sperimentatore e Divulgatore — \"La Notte del Liceo\"], Liceo Scientifico Statale \"Louis Pasteur\" — #emph[Roma]
  ],
  right-content: [
    Dic 2023
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Eseguito dimostrazioni scientifiche interattive per centinaia di visitatori ottenendo l'#strong[Attestato di Merito Ufficiale] della commissione docente, allestendo e conducendo gli esperimenti del #strong[Laboratorio di \"Arte Magica\"].],)
  ],
)


  ],
  breakable: false,
  inset: (
    left: 0cm,
    right: 0cm,
  ),
  width: 100%,
)

== Certifications & Honors
#block(
  [


#one-col-entry(
  content: [#strong[Ingegneria Aeronautica \(60h\):] Università degli Studi Roma Tre — Dip. Ingegneria Civile, Informatica e Tecnologie Aeronautiche \(#emph[Livello 4\/4 Ottimo], Apr 2024\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Astronomia & Spettroscopia \(30h\):] Associazione Romana Astrofili \(A.R.A. - RUNTS Rep. 115192\) — Fotometria MaxIm DL e Ottica \(#emph[Valutazione: Ottimo], Apr 2024\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Competizioni STEM:] #strong[Water Rocket Hackathon] — Team TETI \(SRT, SASA & Studio 5T, Mag 2024\) | #strong[Olimpiadi della Matematica] — Qualificato Gare Regionali \(2025\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Sicurezza sul Lavoro \(4h\):] MIUR & INAIL — Corso di Formazione Generale per Lavoratori ai sensi degli artt. 2 e 37 D.Lgs. 81\/2008 \(#emph[Verifica finale superata], Ott 2023\)]
)

  ],
  breakable: false,
  inset: (
    left: 0cm,
    right: 0cm,
  ),
  width: 100%,
)

