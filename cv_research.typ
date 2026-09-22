#import "@preview/basic-resume:0.2.9": *

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

== Summary

NLP researcher with a PhD in Computer Science and over five years of experience developing NLP models and building training and evaluation workflows. First author of 8 papers at NLP venues including ACL, EMNLP, and COLING, with work on language model evaluation, multilingual and data-efficient NLP, and structured prediction.

#text(size: 0.85em, weight: "bold")[Available immediately.]

== Experience

#work(
  title: "PhD Researcher",
  location: "A Coruña, Spain",
  company: "University of A Coruña",
  dates: dates-helper(start-date: "Mar 2021", end-date: "Jun 2026"),
)
- Published 8 first-author papers on LLM evaluation, data-efficient NLP, structured prediction, multilingual transfer, and model analysis.
- Developed sequence-labeling methods for dependency, constituent, and semantic parsing and nested named entity recognition.
- Evaluated three multilingual pre-trained models across 13 dependency and 10 constituent treebanks, examining how pre-training coverage and tokenization affect syntactic representations.
- Built pipelines comparing human and LLM-generated text across syntactic, lexical, and emotional features, with generation, annotation, statistical analysis, and reporting.
- Built reusable PyTorch and Hugging Face frameworks for model training and evaluation.
- Ran reproducible training and evaluation workflows on GPU clusters with Docker, Kubernetes, Slurm, Run:ai, and Weights & Biases.
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
- Trained and evaluated a pixel-based language model on four 80 GB A100 GPUs for zero-shot transfer from Standard German to dialects across four tasks, outperforming token-based models by up to 26 percentage points in some settings.

#work(
  title: "Python Developer Intern",
  location: "Madrid, Spain",
  company: "Alstom",
  dates: dates-helper(start-date: "Nov 2019", end-date: "Nov 2020"),
)
- Replaced a manual spreadsheet process with a Python and SQLite application for reliability and maintainability data. Added validation and reporting used by engineering stakeholders.

== Education

#edu(
  institution: "University of A Coruña",
  location: "A Coruña, Spain",
  dates: dates-helper(start-date: "Oct 2021", end-date: "Jun 2026"),
  degree: "PhD in Computer Science",
)
- Completed with _cum laude_ and International Doctorate distinctions.
- _Thesis:_ "Encoding, Representation, and Interpretation of Linguistic Structure Across NLP Paradigms". Examines how linguistic structure can support efficient NLP systems and help evaluate language models.

#edu(
  institution: "UNED",
  location: "Spain",
  dates: dates-helper(start-date: "2020", end-date: "2021"),
  degree: "MSc in Language Technologies",
)
- _Thesis:_ "Dependency Parsing as Sequence Labeling for Low-Resource Languages".

#edu(
  institution: "Complutense University of Madrid",
  location: "Madrid, Spain",
  dates: dates-helper(start-date: "2014", end-date: "2019"),
  degree: "BSc in Physics",
)
- _Thesis:_ "Sociophysics: Physics of Complex Systems Applied to Social Systems".

== Skills

- *Research areas:* LLM evaluation, model behaviour, data-efficient NLP, multilingual transfer, structured prediction, information extraction, probing, ablation studies, error analysis
- *ML stack:* Python, PyTorch, Hugging Face (Transformers, Datasets), scikit-learn, pandas, NumPy, SciPy, spaCy, NLTK
- *Research infrastructure:* Docker, Kubernetes, Slurm, Run:ai, Git, Linux, pytest, Weights & Biases, SQLite
- *Languages:* Spanish (Native), English (C2), French (B2), German (B1), Chinese (A1)

#pagebreak()

== Selected Publications

- *Alberto Muñoz-Ortiz*, David Vilares, Caio Corro, and Carlos Gómez-Rodríguez. #link("https://aclanthology.org/2025.findings-emnlp.530/")[_Nested Named Entity Recognition as Single-Pass Sequence Labeling_]. Findings of EMNLP 2025.
  - Developed a single-pass sequence-labeling method for nested named entity recognition.
- *Alberto Muñoz-Ortiz*, Verena Blaschke, and Barbara Plank. #link("https://aclanthology.org/2025.coling-main.427/")[_Evaluating Pixel Language Models on Non-Standardized Languages_]. COLING 2025.
  - Evaluated zero-shot transfer from Standard German to dialects across four tasks; pixel-based models improved over token-based models by up to 26 percentage points in some settings.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://link.springer.com/article/10.1007/s10462-024-10903-2")[_Contrasting Linguistic Patterns in Human and LLM-Generated News Text_]. Artificial Intelligence Review, 2024.
  - Compared human and LLM-generated news text across syntactic, lexical, and emotional features.

== Additional Publications

- Inés Veiga Menéndez, *Alberto Muñoz-Ortiz*, and David Vilares. #link("http://journal.sepln.org/sepln/ojs/ojs/index.php/pln/article/view/6673")[_On the Impact of Syntactic Infusion for Gender Categorization Across Contextual Dimensions_]. Revista de Procesamiento de Lenguaje Natural, 2025.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://portalinvestigacion.udc.gal/documentos/67e30317d40c1252cde1f95d?lang=gl")[_Demographic Background Prompting Does Not Affect Linguistic Features on LLM-Generated News Texts_]. XoveTIC 2024.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://aclanthology.org/2023.ijcnlp-main.23/")[_Assessment of Pre-Trained Models Across Languages and Grammars_]. IJCNLP-AACL 2023.
- *Alberto Muñoz-Ortiz* and David Vilares. #link("https://ruc.udc.es/dspace/handle/2183/33478")[_LyS A Coruña at GUA-SPA\@IberLEF2023: Multi-Task Learning with Large Language Model Encoders for Guarani-Spanish Code Switching Analysis_]. IberLEF 2023.
- *Alberto Muñoz-Ortiz* and David Vilares. #link("https://aclanthology.org/2023.findings-acl.459/")[_Another Dead End for Morphological Tags? Perturbed Inputs and Parsing_]. Findings of ACL 2023.
- *Alberto Muñoz-Ortiz*, Mark Anderson, David Vilares, and Carlos Gómez-Rodríguez. #link("https://aclanthology.org/2022.aacl-short.16/")[_Parsing Linearizations Appreciate PoS Tags - but Some Are Fussy about Errors_]. IJCNLP-AACL 2022.
- *Alberto Muñoz-Ortiz*, Carlos Gómez-Rodríguez, and David Vilares. #link("https://aclanthology.org/2022.insights-1.7/")[_Cross-lingual Inflection as a Data Augmentation Method_]. 3rd Workshop on Insights from Negative Results in NLP, 2022.
- *Alberto Muñoz-Ortiz*, Michalina Strzyz, and David Vilares. #link("https://aclanthology.org/2021.ranlp-1.111/")[_Not All Linearizations Are Equally Data-Hungry in Sequence Labeling Parsing_]. RANLP 2021.

== Academic Service & Peer Review

- *Conferences & Workshops:* ACL Rolling Review (ARR 2024–2025), ACL (2023), EMNLP (2023), EACL (2023), COLING (2022, 2024), RepL4NLP \@ ACL 2024, ALTNLP (2022), CAEPIA (2024)
- *Journals:* Computational Linguistics (MIT Press), ACM Transactions on Asian and Low-Resource Language Information Processing (TALLIP)
