/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 0;                    /* -c option; centers dmenu on screen */
static int min_width = 500;                    /* minimum width when centered */
static int incremental = 0;                 /* -r  option; if 1, outputs text each time a key is pressed */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Bakemono Mono Nerdfont-10.5"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *dynamic     = NULL;      /* -dy option; dynamic command to run on input change */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#250E07", "#FFFCFD" },
	[SchemeSel] = { "#250E07", "#ecc3c2" },
	[SchemeSelHighlight] = { "#250E07", "#ecc3c2" },
	[SchemeNormHighlight] = { "#250E07", "#FFFCFD" },
	[SchemeOut] = { "#000000", "#00ffff" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;
static unsigned int lineheight = 0;         /* -h option; minimum height of a menu line     */

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* -n option; preselected item starting from 0 */
static unsigned int preselected = 0;
