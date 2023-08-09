;;
;; PDDL file for the AIPS2000 Planning Competition
;; based on the data generated by the airport simulator Astras.
;;

;; Author: Sebastian Trueg thisshouldbethecurrentdateandtime :(
;; Created with PreInstancerDomainExporter 0.6 by Sebastian Trueg <trueg@informatik.uni-freiburg.de>
;;

;; Adapted by Kayleigh Sleath to test diagnosis of undefined entities errors (line 18). 28-3-2023 


(define (domain airport_fixed_structure)

(:requirements :typing :strips)

;; REMOVED TYPE airplane TO CREATE UNDEFINED TYPE ERRORS
(:types segment)

(:constants
                seg_pp_0_60
                seg_ppdoor_0_40 - segment

                airplane_CFBEG - airplane
)

(:predicates
                (at-segment ?a - airplane ?s - segment)
                ;; planes are at segments, ie at their end in driving direction

                ;; how the planes affect the airport
                (occupied ?s - segment)
                ;; a plane is in here
                (not_occupied ?s - segment)
                (blocked ?s - segment ?a - airplane)
                ;; segment s is blocked if it is endangered by plane p
                (not_blocked ?s - segment ?a - airplane)
)

(:action move_seg_pp_0_60_seg_ppdoor_0_40_north_north_medium

 :parameters    (?a - airplane)

 :precondition  (and
                 (at-segment ?a seg_pp_0_60)
                 (not_occupied seg_ppdoor_0_40)
                 (not_blocked seg_ppdoor_0_40 airplane_CFBEG)

              )

 :effect        (and
                 (not (occupied seg_pp_0_60))
                 (not_occupied seg_pp_0_60)
                 (not (at-segment ?a seg_pp_0_60))
                 (at-segment ?a seg_ppdoor_0_40)
                )
)
)