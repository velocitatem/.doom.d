(doom! :input
    ;;chinese
    ;;japanese
    ;;layout            ; auie,ctsrnm is the superior home row

    :completion
    company           ; the ultimate code completion backend
    ;;helm              ; the *other* search engine for love and life
    ;;ido               ; the other *other* search engine...
    ivy               ; a search engine for love and life
    vertico           ; the search engine of the future

    :ui
    ;;deft              ; notational velocity for Emacs
    doom              ; what makes DOOM look the way it does
    doom-dashboard    ; a nifty splash screen for Emacs
    doom-quit         ; DOOM quit-message prompts when you quit Emacs
    (emoji +unicode)  ; 🙂
    hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;;hydra
       ;;indent-guides     ; highlighted indent columns
       ;;ligatures         ; ligatures and symbols to make your code pretty again
       minimap           ; show a map of the code on the side
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ;;nav-flash         ; blink cursor line after big motions
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       ;;tabs              ; a tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       ;;unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       ;;window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces
       ;;zen               ; distraction-free coding or writing

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       ;;(format +onsave)  ; automated prettiness
       ;;god               ; run Emacs commands without modifier keys
       ;;lispy             ; vim for lisp, for people who don't like vim
       ;;multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       ;;rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       ;;word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       ;;ibuffer         ; interactive buffer management
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       ;;eshell            ; the elisp shell that works everywhere
       ;;shell             ; simple shell REPL for Emacs
       ;;term              ; basic terminal emulator for Emacs
       vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget
       (spell +flyspell) ; tasing you for misspelling mispelling
       grammar           ; tasing grammar mistake every you make

       :tools
       ;;ansible
       debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       ;;docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ein               ; tame Jupyter notebooks with emacs
       (eval +overlay)     ; run code, run (also, repls)
       ;;gist              ; interacting with github gists
       lookup              ; navigate your code and its documentation
       lsp               ; M-x vscode
       magit             ; a git porcelain for Emacs
       ;;make              ; run make tasks from Emacs
       pass              ; password manager for nerds
       ;;pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       ;;rgb               ; creating color strings
       ;;taskrunner        ; taskrunner for all your projects
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC macos)  ; improve compatibility with macOS
       ;;tty               ; improve the terminal Emacs experience

       :lang
       ;;agda              ; types of types of types of types...
       ;;beancount         ; mind the GAAP
       ;;cc                ; C > C++ == 1
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       csharp            ; unity, .NET, and mono shenanigans
       ;;data              ; config/data formats
       ;;(dart +flutter)   ; paint ui and not much else
       ;;dhall
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;;erlang            ; an elegant language for a more civilized age
       ;;ess               ; emacs speaks statistics
       ;;factor
       ;;faust             ; dsp, but you get to keep your soul
       ;;fsharp            ; ML stands for Microsoft's Language
       ;;fstar             ; (dependent) types and (monadic) effects and Z3
       ;;gdscript          ; the language you waited for
       ;;(go +lsp)         ; the hipster dialect
       (haskell +lsp)    ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ; a language you can depend on
       ;;json              ; At least it ain't XML
       (java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;;lean              ; for folks with too much to prove
       ;;ledger            ; be audit you can be
       ;;lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       org               ; organize your plain life in plain text
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       ;;raku              ; the artist formerly known as perl6
       ;;rest              ; Emacs as a REST client
       ;;rst               ; ReST in peace
       ;;(ruby +rails)     ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       ;;(scheme +guile)   ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;;sml
       ;;solidity          ; do you need a blockchain? No.
       ;;swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       ;;web               ; the tubes
       ;;yaml              ; JSON, but readable
       ;;zig               ; C, but simpler

       :email
       mu4e
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;emms
       ;;everywhere        ; *leave* Emacs!? You must be joking
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought

       :config
       ;;literate
       (default +bindings +smartparens))

(set-frame-parameter (selected-frame) 'alpha '(80 . 70))
(add-to-list 'default-frame-alist '(alpha . (80 . 70)))
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(defun my-nov-font-setup ()
  (face-remap-add-relative 'variable-pitch :family "Liberation Serif"
                                           :height 1.0))
(add-hook 'nov-mode-hook 'my-nov-font-setup)
(add-hook 'after-init-hook #'doom-modeline-mode)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")
(setq +mu4e-backend 'offlineimap)

(global-set-key (kbd "C-c m") 'mu4e)

(use-package mu4e-alert
  :after mu4e
  :init
  (mu4e-alert-enable-mode-line-display)
  (defun gjstein-refresh-mu4e-alert-mode-line ()
    (interactive)
    (mu4e~proc-kill)
    (mu4e-alert-enable-mode-line-display)
    )
  (run-with-timer 0 60 'gjstein-refresh-mu4e-alert-mode-line)
)

;; Now I set a list of
(defvar my-mu4e-account-alist
  '(("Outlook"
     (mu4e-sent-folder "/sent")
     (user-mail-address "daniel@alves.world")
     (smtpmail-smtp-user "daniel@alves.world")
     (smtpmail-local-domain "alves.world")
     (smtpmail-default-smtp-server "smtp-mail.outlook.com")
     (smtpmail-smtp-server "smtp-mail.outlook.com")
     (smtpmail-smtp-service 587)
     )
    ))

(defun my-mu4e-set-account ()
  "Set the account for composing a message.
   This function is taken from:
     https://www.djcbsoftware.nl/code/mu/mu4e/Multiple-accounts.html"
  (let* ((account
    (if mu4e-compose-parent-message
        (let ((maildir (mu4e-message-field mu4e-compose-parent-message :maildir)))
    (string-match "/\\(.*?\\)/" maildir)
    (match-string 1 maildir))
      (completing-read (format "Compose with account: (%s) "
             (mapconcat #'(lambda (var) (car var))
            my-mu4e-account-alist "/"))
           (mapcar #'(lambda (var) (car var)) my-mu4e-account-alist)
           nil t nil nil (caar my-mu4e-account-alist))))
   (account-vars (cdr (assoc account my-mu4e-account-alist))))
    (if account-vars
  (mapc #'(lambda (var)
      (set (car var) (cadr var)))
        account-vars)
      (error "No email account found"))))
(add-hook 'mu4e-compose-pre-hook 'my-mu4e-set-account)

;; Set our nickname & real-name as constant variables
(setq
 erc-nick "velo"     ; Our IRC nick
 erc-user-full-name "Its Me Velo")

;; Define a function to connect to a server
(defun discord ()
  (lambda ()
  (interactive)
  (erc :server "localhost"
       :port   "6667")))

(discord)

(add-hook 'org-mode-hook (lambda ()

        (org-superstar-mode 1)
        (olivetti-mode 1)

        (setq org-todo-keywords '((sequence "TODO(t)" "PROJ(p)" "IDEA(i)" "EVENT(e)" "APPOINTMENT(a)" "|" "DONE(d)" "CANCELLED(c)"))
              org-log-done 'time)

        (setq org-agenda-custom-commands '(
                                           ("S" "School Work" tags-todo "school")
                                           ("d" "Today" agenda "weekly")
                                           ))

        (setq org-tag-alist '(
                              (:startgroup)
                              (:endgroup)
                              ("school" . ?S)
                              ("social" . ?C)
                              ))

        (custom-set-faces
                '(org-level-1 ((t (:inherit outline-1 :height 1.8))))
                '(org-level-2 ((t (:inherit outline-2 :height 1.4561))))
                '(org-level-3 ((t (:inherit outline-3 :height 1.1781))))
                '(org-level-4 ((t (:inherit outline-4 :height 0.9531))))
                '(org-level-5 ((t (:inherit outline-5 :height 0.771))))
        )
))

(setq
        org-directory "~/RoamNotes"
        org-agenda-files '("~/RoamNotes/daily/"
                           "~/RoamNotes/journal/"
                           "~/Documents/birthdays.org"
                           "~/RoamNotes/drill/")
)

(defun agenda-today ()
  (interactive)
  (org-agenda-list "daily" (format-time-string "%Y-%m-%d") 1))
(global-set-key (kbd "C-c o") 'agenda-today)

(setq org-wild-notifier-mode t)

(use-package org-alert
  :custom (alert-default-style 'notifications)
  :config
  (setq org-alert-interval 60
        org-alert-notification-title "Org Alert Reminer")
  (org-alert-enable)
)

(use-package org-super-agenda

  :after org-agenda

  :init
  (setq org-super-agenda-groups '(
                            (:name "Schedule"
                                    :time-grid t)
                            (:name "Today"
                                    :scheduled today)
                            (:habit t)
                            (:name "Due today"
                                    :deadline today)
                            (:name "Overdue"
                                    :deadline past)
                            (:name "Due soon"
                                    :deadline future)
                            (:name "Unimportant"
                                    :todo ("SOMEDAY" "MAYBE" "CHECK" "TO-READ" "TO-WATCH")
                                    :order 100)
                            (:name "Waiting..."
                                    :todo "WAITING"
                                    :order 98)
                            (:name "Scheduled earlier"
                                    :scheduled past)
                                  ))
  :config
  (org-super-agenda-mode)
)

(setq
 org-superstar-headline-bullets-list '("◉" "●" "○" "◆" "●" "○" "◆")
 org-superstar-item-bullet-alist '((?+ . ?➤) (?- . ?✦))
)
