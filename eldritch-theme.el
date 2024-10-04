;;; eldritch-theme.el --- Eldritch color theme for Emacs.

;; Author: Glenn S. Lang
;; Version: 0.1

(deftheme eldritch
  "Eldritch color theme for Emacs")

(let ((eldritch-background     "#212337")
      (eldritch-currentline    "#323449")
      (eldritch-foreground     "#ebfafa")
      (eldritch-comment        "#7081d0")
      (eldritch-cyan           "#04d1f9")
      (eldritch-green          "#37f499")
      (eldritch-orange         "#f7c67f")
      (eldritch-pink           "#f265b5")
      (eldritch-purple         "#a48cf2")
      (eldritch-red            "#f16c75")
      (eldritch-yellow         "#f1fc79")
      (eldritch-bg-dark        "#171928")
      (eldritch-bg-highlight   "#292e42")
      (eldritch-terminal-black "#414868")
      (eldritch-fg-dark        "#abb4da")
      (eldritch-fg-gutter      "#3b4261")
      (eldritch-dark3          "#6473B7")
      (eldritch-comment        "#7081d0")
      (eldritch-dark5          "#5866a2")
      (eldritch-visual         "#76639e")
      (eldritch-dark-cyan      "#10a1bd")
      (eldritch-magenta2       "#bf4f8e")
      (eldritch-magenta3       "#722f55")
      (eldritch-dark-yellow    "#c0c95f")
      (eldritch-dark-green     "#33c57f")
      (eldritch-bright-red     "#f0313e")
      (eldritch-black          "#000000")
      )
  (custom-theme-set-variables
   'eldritch
   '(frame-background-mode (quote dark)))

  (custom-theme-set-faces
   'eldritch

   ;; Basic coloring
   `(border ((t ,(list :background eldritch-bg-dark
		       :foreground eldritch-bg-highlight))))
   `(cursor ((t (:background ,eldritch-green))))
   `(default ((t ,(list :background eldritch-background
			:foreground eldritch-foreground))))
   `(fringe ((t ,(list :background nil
		       :foreground eldritch-dark3))))
   `(vertical-border ((t (:foreground ,eldritch-bg-highlight))))
   `(link ((t (:foreground ,eldritch-cyan))))
   `(link-visited ((t (:foreground ,eldritch-dark-cyan))))
   `(match ((t (:background ,eldritch-visual))))
   `(shadow ((t (:foreground ,eldritch-visual))))
   `(minibuffer-prompt ((t (:foreground ,eldritch-cyan))))
   `(region ((t (:background ,eldritch-magenta3))))
   `(secondary-selection ((t ,(list :background eldritch-magenta3
				    :foreground nil))))
   `(trailing-whitespace ((t ,(list :background eldritch-red
				    :foreground eldritch-black))))
   `(tooltip ((t ,(list :background eldritch-visual
			:foreground eldritch-foreground))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground eldritch-yellow
				 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground eldritch-orange
				    :bold t
				    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,eldritch-red))))
   `(compilation-mode-line-fail ((t ,(list :foreground eldritch-bright-red
					   :bold t
					   :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground eldritch-yellow
					   :bold t
					   :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,eldritch-yellow))))

   ;; Diff
   `(diff-removed ((t ,(list :background nil
			     :foreground eldritch-red))))
   `(diff-added ((t ,(list :background nil
			   :foreground eldritch-dark-green))))

   ;; Dired
   `(dired-directory ((t (:foreground ,eldritch-dark-cyan :weight bold))))
   `(dired-ignore ((t ,(list :foreground eldritch-comment
			     :inherit 'unspecified))))

   ;; Eshell

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,eldritch-green))))
   `(font-lock-comment-face ((t (:foreground ,eldritch-comment))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,eldritch-comment))))
   `(font-lock-constant-face ((t (:foreground ,eldritch-cyan))))
   `(font-lock-doc-face ((t (:foreground ,eldritch-yellow))))
   `(font-lock-doc-string-face ((t (:foreground ,eldritch-yellow))))
   `(font-lock-function-name-face ((t (:foreground ,eldritch-purple))))
   `(font-lock-keyword-face ((t (:foreground ,eldritch-green :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,eldritch-comment))))
   `(font-lock-reference-face ((t (:foreground ,eldritch-comment))))
   `(font-lock-string-face ((t (:foreground ,eldritch-yellow))))
   `(font-lock-type-face ((t (:foreground ,eldritch-comment))))
   `(font-lock-variable-name-face ((t (:foreground ,eldritch-orange))))
   `(font-lock-warning-face ((t (:foreground ,eldritch-red))))

   ;; Helm

   ;; Ido
   `(ido-first-match ((t (:foreground ,eldritch-green :bold nil))))
   `(ido-only-match ((t (:foreground ,eldritch-pink :weight bold))))
   `(ido-subdir ((t (:foreground ,eldritch-purple))))

   ;; Info
   `(info-xref ((t (:foreground ,eldritch-purple))))
   `(ìnfo-visited ((t (:foreground ,eldritch-dark-cyan))))

   ;; Line highlighting

   ;; Line numbers
   `(line-number ((t (:inherit default :foreground ,eldritch-fg-gutter))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,eldritch-green))))

   ;; linum

   ;; Magit

   ;; Message

   ;; Mode line

   ;; Neo dir

   ;; Org mode

   ;; Perspective
   `(persp-selected-face ((t (:foreground ,eldritch-green :bold t))))

   ;; Search

   ;; Sh

   ;; Show paren

   ;; Tuareg

   ;; Speedbar

   ;; Which function
   `(which-func ((t (:foreground ,eldritch-magenta2))))

   ;; Whitespace

   ;; tab-bar
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'eldritch)
