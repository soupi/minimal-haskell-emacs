(package-initialize)

;; disable automatic description as this is both annoying and can easily
;; get intero stuck
(global-eldoc-mode -1)

(add-hook 'minibuffer-setup-hook
    (lambda () (setq truncate-lines nil)))

(setq resize-mini-windows t) ; grow and shrink as necessary
(setq max-mini-window-height 10) ; grow up to max of 10 lines

(setq minibuffer-scroll-window t)

;; will search for cabal in these directories
(add-to-list 'exec-path
  "/usr/local/bin")

(add-to-list 'exec-path
  "~/.local/bin")

;; load packages
(load "~/.emacs.d/my-loadpackages.el")

;; cycle through buffers with Ctrl-Tab
(global-set-key (kbd "<C-tab>") 'other-window)

(global-set-key (kbd "M-<left>") 'windmove-left)          ; move to left window
(global-set-key (kbd "M-<right>") 'windmove-right)        ; move to right window
(global-set-key (kbd "M-<up>") 'windmove-up)              ; move to upper window
(global-set-key (kbd "M-<down>") 'windmove-down)          ; move to lower window

;; enable visual feedback on selections
;(setq transient-mark-mode t)


(global-set-key (kbd "C-~") 'next-buffer)
(global-set-key (kbd "C-`") 'previous-buffer)

;; line numbers
(global-linum-mode 1)

;; no tabs
(setq c-basic-indent 4)
(setq tab-width 4)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;; font
;; (set-frame-font "Anonymous Pro-16")

;; scrolling
(setq scroll-step 1
   scroll-conservatively 10000)

;; auto indent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; parens
(show-paren-mode 1)

;; Warn before you exit emacs!
(setq confirm-kill-emacs 'yes-or-no-p)

;; make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)

;; I use version control, don't annoy me with backup files everywhere
(setq make-backup-files nil)
(setq auto-save-default nil)

