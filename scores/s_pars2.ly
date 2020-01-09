% (c) 2020 by Wolfgang Esser-Skala.
% This file is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
% To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.

\version "2.18.0"

\include "../definitions.ly"

\paper { first-page-number = #65 }

#(set-global-staff-size 15.87)

\book {
% 	\bookpart {
% 		\paper { evenHeaderMarkup = {} oddHeaderMarkup = {} }
% 		\partTitle "P A R S" "II"
% 	}
% 	\bookpart {
% 		\paper { evenHeaderMarkup = {} oddHeaderMarkup = {} }
% 		\markup \null
% 	}
% 	\bookpart {
% 		\header {
% 			movement = \movementTitle "2.1" "R E C I T A T I V O" "Nun ſtellt ſich der Verräther ein"
% 		}
% 		\paper {
% 			system-system-spacing.basic-distance = #23
% 			system-system-spacing.minimum-distance = #23
% 			systems-per-page = #5
% 		}
% 		\score {
% 			<<
% 				\new Staff {
% 					\set Staff.instrumentName = "Der Evangeliſte"
% 					\new Voice = "Tenore" { \dynamicUp \NunStelltTenoreNotes }
% 				}
% 				\new Lyrics \lyricsto Tenore \NunStelltTenoreLyrics
% 				\new StaffGroup <<
% 					\new Staff {
% 						\set Staff.instrumentName = "Organo"
% 						\NunStelltOrgano
% 					}
% 				>>
% 				\new FiguredBass { \NunStelltBassFigures }
% 			>>
% 			\layout { }
% 			\midi { \tempo 4 = 60 }
% 		}
% 	}
	\bookpart {
		\header {
			movement = \movementTitle "2.2" "A R I A" "Ihr kommt mit Schwerdtern und mit Stangen"
		}
		\paper {
			system-system-spacing.basic-distance = #18
			system-system-spacing.minimum-distance = #18
			systems-per-page = #2
		}
		\score {
			<<
				\new StaffGroup <<
					\new GrandStaff \with { \violinGroupDistance } <<
						\new Staff {
							\set Staff.instrumentName = "Oboe I"
							\IhrKommtMitOboeI
						}
						\new Staff {
							\set Staff.instrumentName = "Oboe II"
							\IhrKommtMitOboeII
						}
						\new Staff {
							\set Staff.instrumentName = "Oboe III"
							\IhrKommtMitOboeIII
						}
					>>
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Basſono e" "Violoncello" } }
						\IhrKommtMitFagotto
					}
				>>
				\new StaffGroup \with { \smallerGroupDistance } <<
					\new Staff {
						\set Staff.instrumentName = \markup { \center-column { "Violini" "unisoni" } }
						\IhrKommtMitViolinoI
					}
				>>
				\new Staff {
					\set Staff.instrumentName = \markup { \center-column { "JESUS, der" "gute Hirte" } }
					\new Voice = "Tenore" { \dynamicUp \IhrKommtMitTenoreNotes }
				}
				\new Lyrics \lyricsto Tenore \IhrKommtMitTenoreLyrics
				\new StaffGroup <<
					\new Staff {
						\set Staff.instrumentName = "Organo"
						\IhrKommtMitOrgano
					}
				>>
				\new FiguredBass { \IhrKommtMitBassFigures }
			>>
			\layout { }
			\midi { \tempo 4 = 100 }
		}
	}
}