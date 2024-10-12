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
      (eldritch-white          "#ffffff")
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
   `(font-lock-preprocessor-face ((t (:foreground ,eldritch-dark-cyan))))
   `(font-lock-reference-face ((t (:foreground ,eldritch-comment))))
   `(font-lock-string-face ((t (:foreground ,eldritch-yellow))))
   `(font-lock-type-face ((t (:foreground ,eldritch-magenta2))))
   `(font-lock-variable-name-face ((t (:foreground ,eldritch-orange))))
   `(font-lock-warning-face ((t (:foreground ,eldritch-red))))
   `(font-lock-number-face ((t (:foreground ,eldritch-green))))
   `(font-lock-operator-face ((t (:foreground ,eldritch-purple))))
   `(font-lock-negation-char-face ((t (:foreground ,eldritch-pink))))

   ;; Helm
   `(helm-ff-directory ((t ,(list :background eldritch-background
				  :foreground eldritch-purple
				  :bold t))))
   `(helm-ff-dotted-directory ((t ,(list :background eldritch-background
					 :foreground eldritch-purple
					 :weight 'normal))))
   `(helm-candidate-number ((t ,(list :background eldritch-foreground
				      :foreground eldritch-background))))
   `(helm-ff-executable ((t (:foreground ,eldritch-yellow))))
   `(helm-ff-file ((t (:foreground ,eldritch-foreground))))
   `(helm-ff-invalid-symlink ((t ,(list :background eldritch-red
					:foreground eldritch-bg-dark))))
   `(helm-ff-symlink ((t (:foreground ,eldritch-green))))
   `(helm-header ((t ,(list :background eldritch-background
			    :foreground eldritch-fg-dark
			    :underline nil
			    :box nil))))
   `(helm-moccur-buffer ((t ,(list :background eldritch-background
				   :foreground eldritch-purple))))
   `(helm-selection ((t ,(list :background eldritch-currentline
			       :underline nil))))
   `(helm-selection-line ((t (:foreground ,eldritch-currentline))))
   `(helm-separator ((t ,(list :background eldritch-background
			       :foreground eldritch-green))))
   `(helm-source-header ((t ,(list :background eldritch-background
				   :foreground eldritch-green
				   :box (list :line-width -1
					      :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,eldritch-green :bold nil))))
   `(ido-only-match ((t (:foreground ,eldritch-pink :weight bold))))
   `(ido-subdir ((t (:foreground ,eldritch-purple))))

   ;; Info
   `(info-xref ((t (:foreground ,eldritch-purple))))
   `(info-visited ((t (:foreground ,eldritch-dark-cyan))))

   ;; Line highlighting
   `(highlight ((t (:background ,eldritch-bg-highlight :foreground nil))))
   `(highlight-current-line-face ((t (:background ,eldritch-bg-highlight :foreground nil))))

   ;; Line numbers
   `(line-number ((t (:inherit default :foreground ,eldritch-fg-gutter))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,eldritch-green))))

   ;; linum

   ;; Magit
   `(magit-branch-local ((t (:foreground ,eldritch-pink))))
   `(magit-branch-remote ((t (:foreground ,eldritch-purple))))
   `(magit-refname ((t (:foreground ,eldritch-dark-cyan))))
   `(magit-tag ((t (:foreground ,eldritch-orange))))
   `(magit-hash ((t (:foreground ,eldritch-comment))))
   `(magit-dimmed ((t (:foreground ,eldritch-comment))))
   `(magit-section-heading ((t (:foreground ,eldritch-green :weight bold))))
   `(magit-section-highlight ((t (:background ,eldritch-currentline))))
   `(magit-diff-context ((t (:foreground ,eldritch-fg-dark :extend t))))
   `(magit-diff-context-highlight ((t (:foreground ,eldritch-foreground :inherit magit-section-highlight))))
   `(magit-diff-revision-summary ((t ,(list :background eldritch-background
					    :foreground eldritch-orange
					    :weight 'bold))))
   `(magit-diff-revision-highlight-summary ((t ,(list :foreground eldritch-orange
						      :inherit 'magit-section-highlight
						      :weight 'bold))))
   `(magit-diff-added ((t ,(list :bacground eldritch-background
				 :foreground eldritch-pink))))
   `(magit-diff-added-highlight ((t ,(list :background eldritch-currentline
					   :foreground eldritch-pink))))
   `(magit-diff-removed ((t ,(list :background eldritch-background
				   :foreground eldritch-red))))
   `(magit-diff-removed-highlight ((t ,(list :background eldritch-currentline
					     :foreground eldritch-red))))
   `(magit-diff-file-heading ((t (:foreground ,eldritch-foreground))))
   `(magit-diff-file-heading-highlight ((t (list :inherit magit-section-highlight
						 :weight bold))))
   `(magit-diff-file-heading-selection ((t (list :foreground ,eldritch-green
						 :inherit magit-diff-file-heading-highlight))))
   `(magit-diff-hunk-heading ((t (list :background ,eldritch-fg-gutter
				       :inherit magit-diff-contect))))
   `(magit-diff-hunk-heading-highlight ((t (list :inherit magit-diff-context-highlight
						 :weight bold))))
   `(magit-diff-hunk-heading-selection ((t (list :foreground ,eldritch-green
						 :inherit magit-diff-hunk-heading-highlight))))
   `(magit-diff-lines-heading ((t (list :foreground ,eldritch-green
					:inherit magit-diff-hunk-heading-highlight))))
   `(magit-diff-lines-boundary ((t (:background ,eldritch-green))))
   `(magit-diffstat-added ((t (:foreground ,eldritch-cyan))))
   `(magit-diffstat-removed ((t (:foreground ,eldritch-red))))
   `(magit-log-author ((t (:foreground ,eldritch-comment))))
   `(magit-log-date ((t (:foreground ,eldritch-comment))))
   `(magit-log-graph ((t (:foreground ,eldritch-yellow))))
   `(magit-process-ng ((t ,(list :foreground eldritch-orange
				 :weight 'bold))))
   `(magit-process-ok ((t ,(list :foreground eldritch-pink
				 :weight 'bold))))
   `(magit-signature-good ((t (:foreground ,eldritch-pink))))
   `(magit-signature-bad ((t ,(list :foreground eldritch-red
				    :weight 'bold))))
   `(magit-signature-untrusted ((t (:foreground ,eldritch-cyan))))
   `(magit-signature-expired ((t (:foreground ,eldritch-orange))))
   `(magit-signature-revoked ((t (:foreground ,eldritch-magenta2))))
   `(magit-signature-error ((t (:foreground ,eldritch-cyan))))
   `(magit-cherry-unmatched ((t (:foreground ,eldritch-cyan))))
   `(magit-cherry-equivalent ((t (:foreground ,eldritch-magenta2))))

   ;; Message
   `(message-header-name ((t (:foreground ,eldritch-yellow))))

   ;; Mode line
   `(mode-line ((t ,(list :background eldritch-bg-dark
			  :foreground eldritch-foreground))))
   `(mode-line-buffer-id ((t ,(list :background eldritch-bg-dark
				    :foreground eldritch-foreground))))
   `(mode-line-inactive ((t ,(list :background eldritch-bg-dark
				   :foreground eldritch-fg-dark))))

   ;; Neo dir

   ;; Org mode

   ;; Perspective
   `(persp-selected-face ((t (:foreground ,eldritch-green :bold t))))

   ;; Search
   `(isearch ((t ,(list :background eldritch-foreground
			:foreground eldritch-black))))
   `(isearch-fail ((t ,(list :background eldritch-bright-red
			     :foreground eldritch-black))))
   `(isearch-lazy-highlight-face ((t ,(list :background eldritch-visual
					    :foreground eldritch-white))))

   ;; Sh

   ;; show-paren
   `(show-paren-match-face ((t (:background ,eldritch-cyan))))
   `(show-paren-match-face ((t (:background ,eldritch-cyan))))
   `(show-paren-match-expression ((t (:inherit match))))
   `(show-paren-mismatch ((t (:background ,eldritch-red))))

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
