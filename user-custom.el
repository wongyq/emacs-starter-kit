(setq make-backup-files nil)
(add-hook 'python-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (setq tab-width 4)
            (setq python-indent 4)))

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
;;(set-background-color "grey")

