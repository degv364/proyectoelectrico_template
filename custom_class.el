;; Nice orgmode bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; Use Org-ref
(require 'org-ref)

;; Definition of the proyectoelectrico class for orgmode
(add-to-list 'org-latex-classes
             '("proyectoelectrico"
               "\\documentclass{proyectoelectrico}"
	       ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; Definiton of the calss for IEEE transactions
(add-to-list 'org-latex-classes
             '("IEEEtran"
               "\\documentclass[letterpaper, 10pt, conference]{IEEEtran}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; Tell Org-mode to use latexmk
(setq org-latex-pdf-process (list "latexmk -pdf -bibtex %f"))
