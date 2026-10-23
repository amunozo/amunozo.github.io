#import "@preview/basic-resume:0.2.9": *

// Local override: en dash instead of the template em dash (more reliable for ATS date parsing).
#let dates-helper(start-date: "", end-date: "") = start-date + " – " + end-date

#let name = "Alberto Muñoz Ortiz"
#let email = "alberto.munoz.ortiz@proton.me"
#let github = "github.com/amunozo"

#show: resume.with(
  author: name,
  email: email,
  linkedin: "linkedin.com/in/alberto-muñoz-ortiz-683470106",
  github: github,
  accent-color: "#26428c",
  font: "New Computer Modern",
  font-size: 9.5pt,
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
- Compared text from six LLMs with human-written news on word use, sentence structure, emotion, and gender bias. Toxicity rose with model size, and five of the six models amplified the sexist bias in human text.
- Designed a robustness evaluation for syntactic parsers on text with increasing amounts of typos, in 14 languages.
- Recast nested named entity recognition as linear-time token classification, close in accuracy to quadratic-time methods.
- Built reusable PyTorch and Hugging Face training and evaluation code; ran reproducible GPU experiments with Docker, Kubernetes, Slurm, Run:ai, and Weights & Biases.

#work(
  title: "Visiting Researcher",
  location: "Lausanne, Switzerland",
  company: "EPFL",
  dates: dates-helper(start-date: "Oct 2024", end-date: "Mar 2025"),
)
- Studied how transformers represent and generalize knowledge in Antoine Bosselut's NLP Lab.
- Automated queueing, monitoring, and logging for parallel experiments across multiple A100 GPUs with Docker and Run:ai.

#work(
  title: "Visiting Researcher",
  location: "Munich, Germany",
  company: "Ludwig-Maximilian University",
  dates: dates-helper(start-date: "Jul 2023", end-date: "Oct 2023"),
)
- Pretrained a pixel-based (tokenizer-free) German language model from scratch on four A100 GPUs; released on #link("https://huggingface.co/amunozo/pixel-base-german")[Hugging Face].
- In zero-shot tests on Swiss German and other dialects, it beat token-based models on most tasks, by up to 26 points.

#work(
  title: "Python Developer Intern",
  location: "Madrid, Spain",
  company: "Alstom",
  dates: dates-helper(start-date: "Nov 2019", end-date: "Nov 2020"),
)
- Replaced a manual spreadsheet process with a Python and SQLite application for reliability and maintainability data.

== Projects

#project(
  name: "Hack Apertus 2026 (solo)",
  url: "github.com/amunozo/apertus-swissgov-rsd",
  dates: "Oct 2026",
)
- Found words whose meaning differs between translated Swiss government pages in four languages with frozen Apertus 8B: 0.37 rank correlation with human labels, more than double the best released baseline (0.17).
- Combined middle-layer hidden states and surprisal with logistic regression; reproducible CPU Docker pipeline.

== Education

#edu(
  institution: "University of A Coruña",
  location: "A Coruña, Spain",
  dates: dates-helper(start-date: "Oct 2021", end-date: "Jun 2026"),
  degree: "PhD in Computer Science, cum laude, International Doctorate",
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

- *Research:* LLM evaluation, robustness and perturbation testing, multilingual and dialect transfer, structured prediction, information extraction, probing, error analysis
- *ML stack:* Python, PyTorch, Hugging Face (Transformers, Datasets), scikit-learn, pandas, NumPy, SciPy, spaCy, NLTK
- *Infrastructure:* Docker, Kubernetes, Slurm, Run:ai, Git, Linux, pytest, Weights & Biases, SQLite
- *Working knowledge:* OpenAI API, LLM-as-a-judge, RAG and hybrid retrieval, LoRA/QLoRA
- *Languages:* Spanish (Native), English (C2), French (B2), German (B1), Chinese (A2)
