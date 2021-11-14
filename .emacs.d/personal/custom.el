;; Custom setup --
;; @author: LukasHuber

;; setup files ending in “.js” to open in js2-mode
;; GAZEBO world files
(add-to-list 'auto-mode-alist '("\\.world\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.launch\\'" . xml-mode)) ;; ROS launch files
(add-to-list 'auto-mode-alist '("\\.urdf\\'" . xml-mode)) ;; URDF -- Unified Robot Description Format
(add-to-list 'auto-mode-alist '("\\.urdf\\'" . xml-mode)) ;; ROS -- configurtation files

(add-to-list 'auto-mode-alist '("\\CMakeLists.txt\\'" . yaml-mode))

;; Custom hot key
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

;; (global-set-key (kbd "C-'") 'toggle-comment-on-line)
(global-set-key (kbd "C-;") 'toggle-comment-on-line)
(global-set-key (kbd "C-j") 'toggle-comment-on-line)
;; (global-set-key (kbd "C-j") 'newline)
;; Which one is better??? try out and change
(global-set-key (kbd "C-m") 'newline)

(menu-bar-mode -1) 

;; Set white space mode off (TODD)
;; (global-whitespace-mode 0)
;; (whitespace-mode 0)
(setq prelude-whitespace nil)

(defun my-c++-mode-hook ()
  (setq c-basic-offset 2)
  (c-set-offset 'substatement-open 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Load faster
(setq xterm-query-timeout nil)

;; Chose theme
(load-theme 'manoj-dark)

;;
;; (setq display-line-numbers-mode t)
;; (when (version<= "26.0.50" emacs-version )
  ;; (global-display-line-numbers-mode))

(global-linum-mode 1)
