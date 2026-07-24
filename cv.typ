#import "@preview/basic-resume:0.2.9": *

#let name = "Alberto Muñoz Ortiz"
#let location = "Lausanne, Switzerland | EU Citizen"
#let email = "alberto.munoz.ortiz@proton.me"
#let github = "github.com/amunozo"

#show: resume.with(
 author: name,
 location: location,
 email: email,
 github: github,
 accent-color: "#26428c",
 font: "New Computer Modern",
 paper: "a4",
 author-position: center,
 personal-info-position: center,
)

#align(center)[#text(size: 0.9em, weight: "bold")[NLP Research Engineer]]

== Summary

Research engineer with a PhD in Computer Science, a background in Physics, and over five years of experience building language-model training and evaluation workflows. First author of 8 papers at ACL, EMNLP, and COLING.

#text(size: 0.85em, weight: "bold")[Available immediately.]

== Work Experience

#work(
 title: "PhD Researcher",
 location: "A Coruña, Spain",
 company: "University of A Coruña",
 dates: dates-helper(start-date: "Mar 2021", end-date: "Jun 2026"),
)
- Published 8 first-author papers on LLM evaluation, data-efficient NLP, structured prediction, and multilingual transfer.
- Developed sequence-labeling methods for parsing and nested named entity recognition.
- Built pipelines comparing human and LLM-generated text across syntactic, lexical, and emotional features.
- Ran reproducible training and evaluation workflows on GPU clusters with Docker, Kubernetes, Slurm, Run:ai, and Weights & Biases.

#work(
 title: "Visiting Researcher",
 location: "Lausanne, Switzerland",
 company: "EPFL",
 dates: dates-helper(start-date: "Oct 2024", end-date: "Mar 2025"),
)
- Studied how transformers represent and generalize knowledge in Antoine Bosselut's NLP Lab.
- Built Docker and Run:ai workflows to queue, monitor, and log parallel GPU runs.

#work(
 title: "Visiting Researcher",
 location: "Munich, Germany",
 company: "Ludwig-Maximilian University",
 dates: dates-helper(start-date: "Jul 2023", end-date: "Oct 2023"),
)
- Built and trained a pixel-based language model in PyTorch for non-standardized German dialects. The work was published at COLING 2025.

#work(
 title: "Python Developer Intern",
 location: "Madrid, Spain",
 company: "Alstom",
 dates: dates-helper(start-date: "Nov 2019", end-date: "Nov 2020"),
)
- Replaced a manual spreadsheet process with a Python and SQLite application. Added validation and reporting used by engineering stakeholders.

== Education

#edu(
 institution: "University of A Coruña",
 location: "A Coruña, Spain",
 dates: dates-helper(start-date: "Oct 2021", end-date: "Jun 2026"),
 degree: "PhD in Computer Science",
)
- _Thesis:_ "Encoding, Representation, and Interpretation of Linguistic Structure Across NLP Paradigms".

#edu(
 institution: "UNED",
 location: "Spain",
 dates: dates-helper(start-date: "2020", end-date: "2021"),
 degree: "MSc in Language Technologies",
)

#edu(
 institution: "Complutense University of Madrid",
 location: "Madrid, Spain",
 dates: dates-helper(start-date: "2014", end-date: "2019"),
 degree: "BSc in Physics",
)

== Skills

- *Research:* LLM evaluation, model behaviour, data-efficient NLP, structured prediction, information extraction, multilingual transfer, probing, error analysis
- *ML stack:* Python, PyTorch, Hugging Face (Transformers, Datasets), scikit-learn, pandas, NumPy, SciPy, spaCy, NLTK
- *Infrastructure:* Docker, Kubernetes, Slurm, Run:ai, Git, Linux, pytest, Weights & Biases, SQLite
- *Languages:* Spanish (Native), English (C2), French (B2), German (B1), Chinese (A1)
