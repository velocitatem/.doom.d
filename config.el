;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Daniel Rosel"
      user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox-light)
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq
 display-line-numbers-type t
 projectile-project-search-path '("~/")
 doom-big-font (font-spec :family "C059" :size 14)
)

(after! org
  (setq org-directory "~/RoamNotes"
        org-superstar-headline-bullets-list '("◉" "●" "○" "◆" "●" "○" "◆")
        org-superstar-item-bullet-alist '((?+ . ?➤) (?- . ?✦)) ; changes +/- symbols in item lists
        )
  ;;(require 'org-bullets-mode)
  ;;(add-hook 'org-mode-hook (lambda () (org-bullets-mode)))
)

(add-hook 'org-mode-hook (lambda ()

                           (org-superstar-mode 1)
                           (olivetti-mode 1)

                           ))
(custom-set-faces
  '(org-level-1 ((t (:inherit outline-1 :height 1.4))))
  '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
  '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
  '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
  '(org-level-5 ((t (:inherit outline-5 :height 1.0))))
)
;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(use-package org-contacts
  :ensure nil
  :after org
  :custom (org-contacts-files '("~/Documents/Contacts/contacts.org")))

(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/RoamNotes")
  (org-roam-capture-templates
   '(("d" "default" plain
        "%?"
        :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+HTML_HEAD: <link rel=\"stylesheet\" href=\"org.css\" type=\"text/css\">\n#+STARTUP: latexpreview \n")
        :unnarrowed t)
     ("e" "encrypted" plain
        "%?"
        :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org.gpg" "#+title: ${title}\n#+HTML_HEAD: <link rel=\"stylesheet\" href=\"org.css\" type=\"text/css\">\n#+STARTUP: latexpreview \n")
        :unnarrowed t)
     ("l" "programming language" plain
        "* Characteristics\n\n- Family: %?\n- Inspired by: \n\n* Reference:\n\n"
        :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
        :unnarrowed t)
     ("p" "personal" plain
        "%?"
        :if-new (file+head "~/RoamNotes/personal/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
        :unnarrowed t)
     ("r" "projects" plain
        "%?"
        :if-new (file+head "~/RoamNotes/projects/%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
        :unnarrowed t)

     ))
  :bind (("C-c n l" . org-roam-buffer)
         ("C-c n f" . org-roam-node-find)
         ("C-c n n" . org-roam-dailies-capture-today)
         ("C-c n v" . org-roam-dailies-find-today)
         ("C-c n i" . org-roam-node-insert))
        (:map org-mode-map
                        (("C-c n o" . org-id-get-create)
                        ("C-c n t" . org-roam-tag-add)
                        ("C-c n a" . org-roam-alias-add)
                        ("C-c n l" . org-roam-buffer-toggle)))
  :config
  (org-roam-setup)
  )
(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
    :after org-roam ;; or :after org
;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
;;         a hookable mode anymore, you're advised to pick something yourself
;;         if you don't care about startup time, use
;;  :hook (after-init . org-roam-ui-mode)
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t
          org-roam-ui-open-on-start t))

;; Set $DICPATH to "$HOME/Library/Spelling" for hunspell.
(setenv
  "DICPATH"
  (concat (getenv "HOME") "/Library/Spelling"))
;; Tell ispell-mode to use hunspell.
(setq
  ispell-program-name
  "/bin/hunspell")
(use-package org-download
  :after org
  :bind
  (:map org-mode-map
        (("C-C y" . org-download-screenshot))))

(use-package perspective
  :bind
  ("C-x C-b" . persp-list-buffers)   ; or use a nicer switcher, see below
  :bind
  (("C-x C-k" . persp-kill-buffer*))
  :config
  (persp-mode))

(require 'ox-reveal)
(setq Org-Reveal-root "file:///home/velo/Library/Reveal/reveal.js")


(use-package emojify
  :hook (after-init . global-emojify-mode))


(defun roam-sitemap (title list)
  (concat "#+OPTIONS: ^:nil author:nil html-postamble:nil\n"
          "#+TITLE: " title "\n\n"
          (org-list-to-org list) "\nfile:sitemap.svg"))

(setq my-publish-time 0)   ; see the next section for context
(defun roam-publication-wrapper (plist filename pubdir)
  (org-html-publish-to-html plist filename pubdir)
  (setq my-publish-time (cadr (current-time))))

(setq org-publish-project-alist
  '(("roam"
     :base-directory "~/RoamNotes"
     :auto-sitemap t
     :sitemap-function roam-sitemap
     :sitemap-title "Roam notes"
     :publishing-function roam-publication-wrapper
     :publishing-directory "~/roam-export"
     :section-number nil
     :table-of-contents nil
     :style "<link rel=\"stylesheet\" href=\"org.css\" type=\"text/css\">")))


(org-babel-do-load-languages
 'org-babel-load-languages
 '((plantuml . t))) ; this line activates plantuml
(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))
(beacon-mode 1)
(setq minimap-window-location 'right)
