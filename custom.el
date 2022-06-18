(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-normal-cursor-color "coral")
 '(eclimd-executable "/usr/lib/eclipse/eclimd")
 '(erc-prompt-for-password nil)
 '(erc-server "localhost")
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice nil)
 '(jdee-server-dir "~/myjars")
 '(org-agenda-span 20)
 '(org-journal-dir "/home/velo/RoamNotes/journal/")
 '(package-selected-packages
   '(org-mime magit mu4e-overview mu4e-alert mu4e-views org-alert htmlize org-wild-notifier org-drill circe lsp-java flycheck-pycheckers rainbow-mode jupyter ledger-mode org-latex-impatient wordsmith-mode focus beacon angular-snippets ac-html-angular doom-modeline plantuml-mode nov org-superstar yasnippet-classic-snippets elcord cargo-mode cargo rustic darkroom olivetti ox-reveal lua-mode ess arduino-mode temp-buffer-browse typescript-mode angular-mode activity-watch-mode impatient-mode markdown-preview-eww buffer-expose minimap org-present org-journal windresize writeroom-mode wc-mode mode-icons treemacs org-bullets org-tree-slide eclim))
 '(send-mail-function 'smtpmail-send-it)
 '(smtpmail-smtp-server "smtp-mail.outlook.com")
 '(smtpmail-smtp-service 25)
 '(warning-suppress-types
   '((find-file-hook)
     (doom-switch-buffer-hook)
     (org-capture-after-finalize-hook)
     (org-agenda-finalize-hook)
     ((yasnippet zombie))
     (org-roam)
     (org-roam))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.4))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))

(global-set-key (kbd "C-x x") 'buffer-expose)



;; Reveal.js + Org mode
(require 'ox-reveal)
(setq Org-Reveal-root "file:///home/velo/Library/Reveal/reveal.js")
(setq Org-Reveal-title-slide nil)
(put 'customize-group 'disabled nil)
(put 'customize-option 'disabled nil)
(put 'customize-variable 'disabled nil)
