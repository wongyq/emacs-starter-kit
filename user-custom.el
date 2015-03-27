(setq make-backup-files nil)
(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (setq tab-width 4)
            (setq python-indent 4)))

;; yasnippet
(yas-global-mode 1)

;; Live completion with auto-complete
;; (see http://cx4a.org/software/auto-complete/)
(require 'auto-complete-config nil t)
;; Do What I Mean mode
(setq ac-dwim t)
(ac-config-default)

;; classify tab and whitespace
;;(setq whitespace-style '(tabs tab-mark))
;;(global-whitespace-mode)

;; show line number
(global-linum-mode)

;; auto pair
(require 'autopair)
(autopair-global-mode)

;; smex
;; (smex-initialize)
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; window-number
(require 'window-number)
(window-number-mode 1)

;; expand-region
(require 'expand-region)
(global-set-key (kbd "M-'") 'er/expand-region) 

;; pyflakes
(require 'flymake-python-pyflakes)
(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)
(require 'flymake-cursor)

;; to make vc change log visible
(set-background-color "black")
(set-face-foreground 'font-lock-comment-face "gold")
(set-face-foreground 'region "red")  ;; 区域前景颜色设为红色
(set-face-background 'region "blue") ;; 区域背景色设为蓝色
(set-face-foreground 'flymake-warnline "black")
(set-face-background 'flymake-warnline "green")

;; add find-dired short cut
(global-set-key (kbd "M-q") 'find-dired)

;; feng-highlight
(require 'feng-highlight)
(global-set-key (kbd "M-i") 'feng-highlight-at-point)

;; imenu-anywhere
(require 'imenu-anywhere)
(global-set-key (kbd "M-/") 'imenu-anywhere)

;; find-file-in-project
(global-set-key (kbd "C-x t") 'find-file-in-project)

;; find-search
(require 'file-search)
(global-set-key (kbd "M-e") 'search-directory)

;; hungry-delete
(require 'hungry-delete)
(global-hungry-delete-mode)

;; ace-jump-mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)
