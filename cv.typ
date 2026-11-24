#import "@preview/basic-resume:0.2.9": *

// Local override: en dash instead of the template em dash (more reliable for ATS date parsing).
#let dates-helper(start-date: "", end-date: "") = start-date + " – " + end-date

// Local override: one-column entry headers (no right-aligned cells). Workday and
// similar parsers read the template's stretched lines as two columns and detach
// dates and locations from their entries (seen 6 Nov 2026 on myworkdayjobs forms).
#let work(title: "", dates: "", company: "", location: "") = [
  *#title*, #company \
  _#dates · #location _
]
#let edu(institution: "", dates: "", degree: "", location: "", gpa: "", consistent: false) = [
  *#degree* \
  #institution · _#dates · #location _
]
#let project(name: "", url: "", dates: "", role: "") = [
  *#name*#if url != "" [ (#link("https://" + url)[#url])]#if dates != "" [, #dates]
]

#let name = "Alberto Muñoz Ortiz"
#let email = "alberto.munoz.ortiz@proton.me"
#let github = "github.com/amunozo"

#show: resume.with(
  author: name,
  email: email,
  github: github,
  linkedin: "linkedin.com/in/alberto-muñoz-ortiz-683470106",
  accent-color: "#26428c",
  font: "New Computer Modern",
  font-size: 9.25pt,
  paper: "a4",
  author-position: center,
  personal-info-position: center,
)
#set text(hyphenate: false)

== Summary

AI engineer and researcher with a PhD in Computer Science and a BSc in Physics. Five years building PyTorch training and evaluation pipelines for language models, with a focus on robustness, efficiency, and multilingual and dialect text. First author of 8 papers at NLP venues including ACL, EMNLP, and COLING.

#text(size: 0.85em, weight: "bold")[Available immediately.]

== Work Experience

#work(
  title: "PhD Researcher",
  location: "A Coruña, Spain",
  company: "University of A Coruña",
  dates: dates-helper(start-date: "Mar 2021", end-date: "Jun 2026"),
)
- Compared text from six LLMs with human-written news on word use, sentence structure, emotion, and gender bias. Negative emotions rose with model size, and five of the six models amplified the sexist bias in human text.
- Designed a robustness evaluation for syntactic parsers on text with increasing amounts of typos, in 14 languages.
- Assessed how multilingual token-based and character-based encoders represent syntax across treebanks: a language's presence in the pre-training data mattered more than task data size, and token-based models represented syntax better.
- Built reusable PyTorch and Hugging Face training and evaluation code; ran reproducible GPU experiments with Docker, Kubernetes, Slurm, Run:ai, and Weights & Biases.

#work(
  title: "Visiting Researcher",
  location: "Lausanne, Switzerland",
  company: "EPFL",
  dates: dates-helper(start-date: "Oct 2024", end-date: "Mar 2025"),
)
- Studied how transformers represent and generalize knowledge in Antoine Bosselut's NLP Lab.

#work(
  title: "Visiting Researcher",
  location: "Munich, Germany",
  company: "Ludwig-Maximilian University",
  dates: dates-helper(start-date: "Jul 2023", end-date: "Oct 2023"),
)
- Pretrained a pixel-based (tokenizer-free) German language model from scratch on four A100 GPUs (#link("https://huggingface.co/amunozo/pixel-base-german")[Hugging Face]); in zero-shot tests on Swiss German and other dialects it beat token-based models on most tasks, by up to 26 points.

#work(
  title: "Python Developer Intern",
  location: "Madrid, Spain",
  company: "Alstom",
  dates: dates-helper(start-date: "Nov 2019", end-date: "Nov 2020"),
)
- Replaced a manual spreadsheet process with a Python and SQLite application for reliability and maintainability data.

== Projects

#project(
  name: "jobfacts: deployed job-posting pipeline and hybrid search service",
  url: "github.com/amunozo/jobfacts",
  dates: "Nov 2026 – present",
)
- Daily collector (about 190 boards) in PostgreSQL/pgvector; classifier extracts quoted facts (90–100%, 50 held-out postings).
- FastAPI hybrid search (RRF) on AWS Lightsail (Docker Compose, Caddy HTTPS); CI accuracy gate, about 940 tests.

#project(
  name: "Hack Apertus 2026: Winner, Track 2A (solo)",
  url: "github.com/amunozo/apertus-swissgov-rsd",
  dates: "Oct 2026",
)
- Detected word-level meaning differences between translated Swiss government pages using middle-layer hidden states and contrastive surprisal from a frozen Apertus 8B: 37.4 Spearman against human labels, vs. 17.1 for the best released baseline.

== Education

#edu(
  institution: "University of A Coruña",
  location: "A Coruña, Spain",
  dates: dates-helper(start-date: "Oct 2021", end-date: "Jun 2026"),
  degree: "Doctorate (PhD) in Computer Science",
)

#edu(
  institution: "Universidad Nacional de Educación a Distancia (UNED)",
  location: "Madrid, Spain",
  dates: dates-helper(start-date: "2020", end-date: "2021"),
  degree: "Master of Science (MSc) in Language Technologies",
)

#edu(
  institution: "Complutense University of Madrid",
  location: "Madrid, Spain",
  dates: dates-helper(start-date: "2014", end-date: "2019"),
  degree: "Bachelor of Science (BSc) in Physics",
)

== Selected Publications

- *Alberto Muñoz-Ortiz*, Verena Blaschke, Barbara Plank. #link("https://aclanthology.org/2025.coling-main.427/")[_Evaluating Pixel Language Models on Non-Standardized Languages_]. COLING 2025.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, David Vilares. #link("https://link.springer.com/article/10.1007/s10462-024-10903-2")[_Contrasting Linguistic Patterns in Human and LLM-Generated News Text_]. Artificial Intelligence Review, 2024. 267 citations; cited in #link("https://www.theguardian.com/commentisfree/2026/apr/14/ai-language-human-speech")[_The Guardian_].

== Skills

- *Research:* LLM evaluation, robustness, multilingual/dialect transfer, information extraction, hybrid retrieval, error analysis
- *ML stack:* Python, PyTorch, Hugging Face (Transformers, Datasets), scikit-learn, pandas, NumPy, SciPy, spaCy, NLTK
- *Infrastructure:* FastAPI, PostgreSQL/pgvector, Docker, Kubernetes, Slurm, Run:ai, AWS, GitHub Actions, Linux, pytest
- *Working knowledge:* OpenAI API, LLM-as-a-judge, RAG, LoRA/QLoRA
- *Languages:* Spanish (Native), English (C2), French (B2), German (B1), Chinese (A2)
