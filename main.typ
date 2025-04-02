// Set the metadata for the document
#set document(
  author: "Somraj Saha",
  title: "Somraj Saha's Resume",
  description: [This is Somraj Saha's resume written using Typst, an awesome typesetting tool!],
)

// Setup the page for legibility and better utilisation of whitespace
#set page(margin: 1.25cm)

// Configure the hyperlinks to render with an underline
#show link: underline

// Set a more legible font
#set text(font: "Liberation Serif")

// Function to define the header of the resume
#let header(name: "John Doe") = {
  text(size: 25pt, align(center, [#name]))
  v(15pt, weak: true)
  text(
    align(
      center,
      [
        // TODO: Replace the following with a for loop
        #link("mailto:somraj.saha@jarmos.dev")[somraj.saha\@jarmos.dev] |
        #link("https://jarmos.dev")[jarmos.dev] |
        #link("https://github.com/Jarmos-san")[github.com/Jarmos-san]
      ],
    ),
  )
}

// Function definition to render the roles
#let role(name, company, location, start, end) = {
  grid(columns: (auto, 1fr), [#text(strong(name), size: 12pt), #company -- #location], grid.cell(
      align(right, [#start\-#end]),
    ))
}

// Function to define the section of the resume
#let section(body) = {
  text(size: 15pt)[#body]
  v(4pt, weak: true)
  line(length: 100%, stroke: 1pt)
  v(6pt, weak: true)
}

// Function to render the academic entries
#let college(name, degree, subject, start, end) = {
  grid(columns: (auto, 1fr), [*#name* - #degree in #subject], grid.cell(align(right, [#start\-#end])))
}

// The top-level heading of the resume
#header(name: "Somraj Saha")

#linebreak()

// The "skills" section
#section[Skills]
*Software Development*: Python, Golang, Lua, TypeScript (and JavaScript) \
*Frameworks & Libraries*: FastAPI, Nuxt.js, Chi, SQLAlchemy \
*Miscellaneous*: Terraform, Ansible, Git, Packer, PostgreSQL

// The "experience" section
#section[Experience]

#role("Chief Technology Officer (CTO)", "Weburz Ltd", "Remote", "2022", "2025")

- #lorem(20)
- #lorem(20)
- #lorem(20)

#role("Senior Software Engineer", "Augwir Technologies", "Remote", "2021", "2022")

- *Built an engineering team from the ground up*, establishing foundational development workflows and management guidelines that streamlined collaboration and enhanced productivity.
- *Led a cross-functional engineering team* (Frontend, Backend, and DevOps) to *design*, *develop*, and *launch the company's Minimum Viable Product (MVP)*, expediting product validation and market entry.
- *Designed the foundational architecture* for the company's flagship product, leveraging state-of-the-art photogrammetry and Machine Learning (ML) techniques to generate high-fidelity 3D models from 2D images.

#role("Technical Writer", "deepen", "Remote", "2020", "2021")

- *Collaborated with the marketing team* to develop a content strategy focused on technical topics such as *Computer Vision (CV) and Machine Learning (ML)*, bridging the knowledge gap and ensuring accurate, high-quality articles.
- *Published technical content on CV technologies and Autonomous Vehicles (AVs)* on the company's engineering blog. This collaboration led to a *25% improvement in keyword selection*, enhancing the technical accuracy and searchability of published articles.
- *Optimized past and future blog posts* for SEO by ensuring the inclusion of *relevant technical keywords*. This initiative resulted in a *3x increase in organic traffic*, boosting the blog's visibility and engagement.

#role("Software Support Engineer", "MoveInSync", "Bangalore, India", "2019", "2020")

- *Triaged and analyzed* 5-10 tickets daily, assessing severity and escalating critical issues to the Software Engineering (SWE) teams. This *enabled bug fixes to be deployed 5x faster*, reducing downtime and improving system stability.
- *Proactively monitored* the frontend for unintended behavior, diagnosing and resolving backend issues *within 24* hours when necessary. This ensured a *seamless user experience*, reducing frontend-related issue escalations.
- *Facilitated cross-functional collaboration* between Customer Support and SWE teams, ensuring clear documentation and communication of support tickets. This led to a *90% reduction in miscommunications*, accelerating bug resolution and improving customer satisfaction.

// The "education" section
#section[Education]

#college("University of Hyderabad", "MA", "Economics", "2013", "2019")
