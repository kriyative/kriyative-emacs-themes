;;; kriyative-light-theme.el -- white background based theme

;; Author: Ram Krishnan <kriyative@gmail.com>
;; Url: https://github.com/kriyative/kriyative-emacs-themes
;; Package-Requires: ((emacs "24"))

;; an even lighter theme, adapted from:
;; https://github.com/habamax/habamax-theme

(require 'kriyative-theme-core)

(deftheme kriyative-light "White background based minimalist theme")

(defgroup kriyative-light nil
  "Kriyative light theme options."
  :group 'faces)

(let* ((fg "black")
       (bg "white")
       (bg-dim "lightgrey")
       (fg-dim "grey30")
       (cursor "red")
       (warning "red")
       (builtin "gray20")
       (function "blue")
       (keyword "gray20")
       (type fg-dim)
       (str "DimGrey")
       (comment "DimGrey")
       (gray "#7a7a7a")
       (url "#3737D6")
       (url-visited "#806088")
       (bg-highlight "#ececef"))
  (custom-theme-set-faces
   'kriyative-light
   ;; standard faces
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,cursor))))
   `(region ((t (:background ,fg-dim :foreground ,bg-dim))))
   `(highlight ((t (:background ,bg-highlight))))
   `(header-line ((t (:foreground ,fg))))
   `(mode-line ((t (:background ,fg-dim :foreground ,bg))))
   `(mode-line-inactive ((t (:background ,bg-dim :foreground ,fg))))
   `(vertical-border ((t (:foreground ,fg :background ,fg))))
   `(fringe ((t (:background ,bg))))
   `(font-lock-string-face ((t (:foreground ,str))))
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-warning-face ((t (:foreground ,warning))))
   `(font-lock-keyword-face ((t (:foreground ,keyword))))
   `(font-lock-builtin-face ((t (:foreground ,builtin))))
   `(font-lock-function-name-face ((t (:foreground ,function))))
   `(font-lock-constant-face ((t (:foreground ,function))))
   `(font-lock-variable-name-face ((t (:foreground ,function))))
   `(font-lock-type-face ((t (:foreground ,type))))
   `(lisp-global-var-face ((t (:inherit default :weight bold))))
   `(lisp-constant-var-face ((t (:inherit lisp-global-var-face))))
   `(link ((t (:foreground ,url :underline (:color ,url)))))
   `(link-visited
     ((t (:foreground ,url-visited :underline (:color ,url-visited)))))
   ;; dired
   `(dired-directory ((t (:inherit default :weight bold))))
   `(dired-mark ((t (:foreground ,keyword :weight bold))))
   `(dired-marked ((t (:foreground ,function))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'kriyative-light)

;;; kriyative-light-theme.el ends here
