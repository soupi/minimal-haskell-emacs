(load "~/.emacs.d/my-packages.el")

;popwin
(require 'popwin)
(popwin-mode 1)

;; sidebars
(global-set-key [f7] 'buffer-menu)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;;COLOR THEMES

(load-theme 'seti t)

;; COMPLETION

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;shortcut for completion
(global-set-key (kbd "C-c w") 'company-complete)

;after how many letters do we want to get completion tips? 1 means from the first letter
(setq company-minimum-prefix-length 1)
(setq company-dabbrev-downcase 0)
;after how long of no keys should we get the completion tips? in seconds
(setq company-idle-delay 0.4)

;; ERRORS ON THE FLY

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(require 'flycheck-color-mode-line)

;tooltip errors
(require 'flycheck-pos-tip)
(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

(setq flycheck-pos-tip-timeout 60)

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(require 'flycheck-color-mode-line)
(add-hook 'flycheck-mode-hook
  'flycheck-color-mode-line-mode)

(global-set-key [f9] 'flycheck-list-errors)

;; HASKELL ;;

;dante
(require 'dante)

(add-hook 'haskell-mode-hook 'dante-mode)

(require 'haskell-mode)

;a few convenient shortcuts
(define-key haskell-mode-map (kbd "C-c C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-l C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)

; search work under the cursor in hoogle

(define-key haskell-mode-map (kbd "C-:") 'haskell-search-hoogle)

;; default is firefox. Change this if you want to open hoogle on a different browser.
(setq browse-url-generic-program (executable-find "firefox"))

(defun haskell-search-hoogle ()
   "Search hoogle for the word under the cursor"
   (interactive)
   (browse-url-generic (concat "https://hoogle.haskell.org/?hoogle=" (thing-at-point 'word))))

;; EVIL ;;

(require 'evil)
(evil-mode 1)

(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "SPC") nil)
  (define-key evil-visual-state-map (kbd "SPC") nil)
  (define-key evil-motion-state-map (kbd "RET") nil)
  (define-key evil-visual-state-map (kbd "RET") nil)
  (define-key evil-motion-state-map (kbd "TAB") nil)
  (define-key evil-visual-state-map (kbd "TAB") nil)

  (define-key evil-normal-state-map (kbd "C-.") nil)
  (define-key evil-normal-state-map (kbd "M-.") nil)
)


