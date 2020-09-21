if exist ..\_temp.pdf del ..\_temp.pdf
pandoc %1.md -s -o ..\_temp.pdf --pdf-engine=lualatex -N -F pandoc-crossref --template=report_template.tex --metadata-file=./config/crossref_config.yaml
if exist ..\_temp.pdf ( if exist ..\%1.pdf del ..\%1.pdf
ren ..\_temp.pdf %1.pdf )
