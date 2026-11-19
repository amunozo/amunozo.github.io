#import "@preview/basic-resume:0.2.9": *

// Local override: en dash instead of the template em dash (more reliable for ATS date parsing).
#let dates-helper(start-date: "", end-date: "") = start-date + " – " + end-date

#let name = "Alberto Muñoz Ortiz"
#let email = "alberto.munoz.ortiz@proton.me"
#let website = "amunozo.com"

#set page(margin: (x: 1.45cm, y: 1.15cm))
#set text(size: 9.4pt)
#set par(leading: 0.5em)
#set list(tight: true)
#show link: set text(fill: rgb("#26428c"))

#show: resume.with(
 author: name,
 email: email,
 github: website,
 accent-color: "#26428c",
 font: "New Computer Modern",
 paper: "a4",
 author-position: center,
 personal-info-position: center,
)
#set text(hyphenate: false)

== Summary

NLP researcher with a PhD in Computer Science and a BSc in Physics. Research on how language models encode linguistic structure and how it can make NLP more efficient, robust, and interpretable, mainly for multilingual and non-standard languages. First author of 8 papers at NLP venues including ACL, EMNLP, and COLING.

#text(size: 0.85em, weight: "bold")[Available immediately.]

== Experience

#work(
 title: "PhD Researcher",
 location: "A Coruña, Spain",
 company: "University of A Coruña",
 dates: dates-helper(start-date: "Mar 2021", end-date: "Jun 2026"),
)
- Compared human news text with output from six LLMs (three families, four sizes) across morphological, syntactic, psychometric, and sociolinguistic features. Negative emotions rose with model size, and five of the six models amplified the sexist bias found in human text (_Artificial Intelligence Review_, 2024).
- Designed a robustness evaluation for parsers on 14 UD treebanks with increasing rates of adversarial typos. Morphological tags made transition- and graph-based parsers degrade faster but helped sequence-labeling parsers (Findings of ACL 2023).
- Assessed how mBERT, XLM-RoBERTa, and CANINE encode syntax on 13 dependency and 10 constituent treebanks. Whether a language appeared in pre-training mattered more than the amount of task data, and subword models represented syntax better than character-level ones (IJCNLP-AACL 2023).
- Developed sequence-labeling methods for dependency, constituent, and semantic parsing, and recast nested named entity recognition as linear-time token classification, close in accuracy to quadratic-time methods (Findings of EMNLP 2025).
- Built reusable PyTorch and Hugging Face frameworks for training and evaluation; ran reproducible workflows on GPU clusters with Docker, Kubernetes, Slurm, Run:ai, and Weights & Biases.
- Contributed to the ERC Starting Grant project #link("https://fastparse.grupolys.org/")[FASTPARSE] on fast and accurate parsing.

#work(
 title: "Visiting Researcher",
 location: "Lausanne, Switzerland",
 company: "EPFL",
 dates: dates-helper(start-date: "Oct 2024", end-date: "Mar 2025"),
)
- Studied how transformers represent and generalize knowledge in Antoine Bosselut's NLP Lab.
- Built Docker and Run:ai workflows to queue, monitor, and log parallel experiments across multiple A100 GPUs.

#work(
 title: "Visiting Researcher",
 location: "Munich, Germany",
 company: "Ludwig-Maximilian University",
 dates: dates-helper(start-date: "Jul 2023", end-date: "Oct 2023"),
)
- Pretrained a pixel-based (tokenizer-free) language model from scratch on German text on four 80 GB A100 GPUs and released it on #link("https://huggingface.co/amunozo/pixel-base-german")[Hugging Face].
- In zero-shot transfer to Swiss German, Bavarian, Alsatian, and Low Saxon, it outperformed token-based models on POS tagging, dependency parsing, and intent detection by up to 26 points, but not on topic classification (COLING 2025).

#work(
 title: "Python Developer Intern",
 location: "Madrid, Spain",
 company: "Alstom",
 dates: dates-helper(start-date: "Nov 2019", end-date: "Nov 2020"),
)
- Replaced a manual spreadsheet process with a Python and SQLite application for reliability and maintainability data. Added validation and reporting used by engineering stakeholders.

== Projects

#project(
 name: "Hack Apertus 2026: Winner, Track 2A (solo)",
 url: "github.com/amunozo/apertus-swissgov-rsd",
 dates: "Oct 2026",
)
- Detected word-level meaning differences between parallel Swiss government web pages (English vs. German, French, and Italian) using Apertus 8B as a frozen reader. A logistic regression head over middle-layer hidden-state alignment and contrastive surprisal reached 37.4 Spearman on the held-out test, vs. 17.1 for the best released baseline.
- Layer choice mattered most: the benchmark's last-layer recipe scored 6.9 on development data and the best middle layer 30.0. Released the code with a CPU Docker pipeline that reproduces the test score.

#project(
 name: "jobfacts: job-posting pipeline with measured LLM extraction",
 url: "github.com/amunozo/jobfacts",
 dates: dates-helper(start-date: "Nov 2026", end-date: "present"),
)
- Collects AI and data job postings daily from about 170 employer job boards into PostgreSQL. An LLM fills a fixed schema per posting (work mode, remote from Switzerland, language level, seniority), each value with the sentence from the posting that supports it, so every fact can be checked.
- Accuracy measured on 50 labelled postings in English, German, and French: 90–100% on the extracted fields. Docker Compose, about 930 pytest tests. Built with coding agents under my direction.

#pagebreak()

== Education

#edu(
 institution: "University of A Coruña",
 location: "A Coruña, Spain",
 dates: dates-helper(start-date: "Oct 2021", end-date: "Jun 2026"),
 degree: "Doctorate (PhD) in Computer Science",
)
- _Thesis:_ "Encoding, Representation, and Interpretation of Linguistic Structure Across NLP Paradigms". Examines how linguistic structure can support efficient NLP systems and help evaluate language models.

#edu(
 institution: "Universidad Nacional de Educación a Distancia (UNED)",
 location: "Madrid, Spain",
 dates: dates-helper(start-date: "2020", end-date: "2021"),
 degree: "Master of Science (MSc) in Language Technologies",
)
- _Thesis:_ "Dependency Parsing as Sequence Labeling for Low-Resource Languages".

#edu(
 institution: "Complutense University of Madrid",
 location: "Madrid, Spain",
 dates: dates-helper(start-date: "2014", end-date: "2019"),
 degree: "Bachelor of Science (BSc) in Physics",
)
- _Thesis:_ "Sociophysics: Physics of Complex Systems Applied to Social Systems".

== Skills

- *Research areas:* LLM evaluation, robustness and perturbation testing, multilingual and dialect transfer, data-efficient NLP, structured prediction, information extraction, probing, error analysis
- *ML stack:* Python, PyTorch, Hugging Face (Transformers, Datasets), scikit-learn, pandas, NumPy, SciPy, spaCy, NLTK
- *Research infrastructure:* SQL (PostgreSQL, SQLite), Docker, Kubernetes, Slurm, Run:ai, Git, Linux, pytest, Weights & Biases
- *Languages:* Spanish (Native), English (C2), French (B2), German (B1), Chinese (A2)

== Selected Publications

Full list on #link("https://scholar.google.com/citations?user=sS5dz4QAAAAJ")[Google Scholar]. Code on #link("https://github.com/amunozo")[GitHub] and pretrained model on #link("https://huggingface.co/amunozo")[Hugging Face].

- *Alberto Muñoz-Ortiz*, David Vilares, Caio Corro, and Carlos Gómez-Rodríguez. #link("https://aclanthology.org/2025.findings-emnlp.530/")[_Nested Named Entity Recognition as Single-Pass Sequence Labeling_]. Findings of EMNLP 2025.
- *Alberto Muñoz-Ortiz*, Verena Blaschke, and Barbara Plank. #link("https://aclanthology.org/2025.coling-main.427/")[_Evaluating Pixel Language Models on Non-Standardized Languages_]. COLING 2025.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://link.springer.com/article/10.1007/s10462-024-10903-2")[_Contrasting Linguistic Patterns in Human and LLM-Generated News Text_]. Artificial Intelligence Review, 2024. 267 citations; cited in #link("https://www.theguardian.com/commentisfree/2026/apr/14/ai-language-human-speech")[_The Guardian_].

== Additional Publications

- Inés Veiga Menéndez, *Alberto Muñoz-Ortiz*, and David Vilares. #link("http://journal.sepln.org/sepln/ojs/ojs/index.php/pln/article/view/6673")[_On the Impact of Syntactic Infusion for Gender Categorization Across Contextual Dimensions_]. Revista de Procesamiento de Lenguaje Natural, 2025.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://portalinvestigacion.udc.gal/documentos/67e30317d40c1252cde1f95d?lang=gl")[_Demographic Background Prompting Does Not Affect Linguistic Features on LLM-Generated News Texts_]. XoveTIC 2024.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://aclanthology.org/2023.ijcnlp-main.23/")[_Assessment of Pre-Trained Models Across Languages and Grammars_]. IJCNLP-AACL 2023.
- *Alberto Muñoz-Ortiz* and David Vilares. #link("https://ruc.udc.es/dspace/handle/2183/33478")[_LyS A Coruña at GUA-SPA\@IberLEF2023: Multi-Task Learning with Large Language Model Encoders for Guarani-Spanish Code Switching Analysis_]. IberLEF 2023.
- *Alberto Muñoz-Ortiz* and David Vilares. #link("https://aclanthology.org/2023.findings-acl.459/")[_Another Dead End for Morphological Tags? Perturbed Inputs and Parsing_]. Findings of ACL 2023.
- *Alberto Muñoz-Ortiz*, Mark Anderson, David Vilares, and Carlos Gómez-Rodríguez. #link("https://aclanthology.org/2022.aacl-short.16/")[_Parsing Linearizations Appreciate PoS Tags - but Some Are Fussy about Errors_]. IJCNLP-AACL 2022.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://aclanthology.org/2022.insights-1.7/")[_Cross-lingual Inflection as a Data Augmentation Method_]. 3rd Workshop on Insights from Negative Results in NLP, 2022.
- *Alberto Muñoz-Ortiz*, Michalina Strzyz, and David Vilares. #link("https://aclanthology.org/2021.ranlp-1.111/")[_Not All Linearizations Are Equally Data-Hungry in Sequence Labeling Parsing_]. RANLP 2021.

== Teaching & Supervision

- *Teaching:* Programming Fundamentals II, BSc in Data Science and Engineering, University of A Coruña (45 h per year, 2022–23 and 2023–24); Natural Language Processing and Text Mining, University of A Coruña (2024–25); Automata Theory and Formal Languages, BSc in Computer Science, University of Vigo (guest lecturer, 20 h, 2023–24).
- *Supervision:* Co-supervised two BSc final-year theses (2024).

== Academic Service & Peer Review

- *Conferences & Workshops:* ACL Rolling Review (ARR 2024–2025), ACL (2023), EMNLP (2023), EACL (2023), COLING (2022, 2024), RepL4NLP \@ ACL 2024, ALTNLP (2022), CAEPIA (2024)
- *Journals:* Computational Linguistics (MIT Press), ACM Transactions on Asian and Low-Resource Language Information Processing (TALLIP)
