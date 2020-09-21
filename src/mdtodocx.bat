if exist ..\_temp.docx del ..\_temp.docx
pandoc %1.md -s -o ..\_temp.docx --pdf-engine=lualatex -N -F pandoc-crossref --template=report_template.tex --metadata-file=./config/crossref_config.yaml
if exist ..\_temp.docx ( if exist ..\%1.docx del ..\%1.docx
ren ..\_temp.docx %1.docx )
