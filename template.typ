#let template(body) = {
  
    let title_page = {
        page(
            header: none,
            footer: none,
            margin: (
                left: 25mm,
                right: 25mm,
                top: 20mm,
                bottom: 20mm,
            ),
        )[
            #set align(center)
            #set text(weight: "bold", size: 18pt)
            #set text(font: "New Computer Modern", lang: "ru")
            Пролегомены к высокому искусственному интеллекту
            
            #set text(size: 14pt)
            Конспект лекций
            
            #v(30mm) 
            
            #set text(weight: "bold", size: 14pt)
            Автор конспекта:
            
            #set text(size: 12pt)
            Король Михаил
            
            #v(40mm) 
            
            // 2025
        ]
        counter(page).update(2)
    }

    let outline_page = {
        pagebreak()
        set align(center)
        set text(weight: "bold", size: 14pt)
        set text(font: "New Computer Modern", lang: "ru")
        [Содержание]
        
        v(10mm)
        
        set text(weight: "regular", size: 12pt)
        outline(
            title: none,
            indent: 5mm,
            fill: none
        )
    }

    let main_pages = {
        set page(
            margin: (
                left: 25mm,
                right: 25mm,
                top: 20mm,
                bottom: 20mm,
            ),
            footer: [
                #set align(center)
                #context counter(page).display()
            ],
        )
        set par(
            justify: true,
            leading: 1em,
        )

        show heading.where(level: 1): h => {
            set align(center)
            set text(weight: "bold", size: 14pt)
            pagebreak(weak: true)
            h.body
        }
        show heading.where(level: 2): h => {
            set text(weight: "bold", size: 12pt)
            h.body
        }

        body
    }

    set text(
        lang: "ru",
        size: 12pt,
        font: "Times New Roman"
    )
    title_page
    outline_page
    main_pages
}


