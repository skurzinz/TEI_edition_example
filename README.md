# TEI_edition_example

Repo for teaching purposes 

Showcase digital edition of a sample document. 

Digitale Edition von der Quelle bis zur Repräsentation in Web und Print, using

- Transkribus http://transkribus.eu/ for layout analysis and HTR transcription
- GitHub (this repo) for versioning
- TortoiseGit https://tortoisegit.org/download/ for Git Windows Explorer integration
- Oxygen http://oxygenxml.com/ for manual XML editing and validation
- recogito https://recogito.pelagios.org/ for Named Entity Recognition (NER)
- eXist-db http://exist-db.org/ for serving XML data
  - dsebaseapp https://github.com/KONDE-AT/dsebaseapp as a boilerplate edition application for eXist-db
  - TEIPublisher https://teipublisher.com/exist/apps/tei-publisher/playground/MozartTaufschein.xml?odd=teipublisher.odd&template=letter.html full-blown edition workflow tool for eXist-db 
- TeXLive https://www.tug.org/texlive/ / Overleaf https://www.overleaf.com/project/61f14f2393b75b0b7e87afb1 for quickly creating proper PDF output based e.g. on the <tei2tex.xsl> stylesheet given here. 

A full round trip can be made in 90 minutes. 
