// preamble 
  #import "@preview/polylux:0.3.1": *
  #import themes.simple: *
  #set page(paper: "presentation-16-9")
  #show: simple-theme.with(
    footer: [STRUCTURAL DYNAMICS],
  )
  #set text(
    font: "erewhon",
    top-edge: "cap-height",
    bottom-edge: "baseline",
    number-type: "old-style",
    size:21pt
  ) // main font used
  #show link: set text(fill: rgb(0, 0, 255)) // show links w/ colour
  #let sc(content) = text(features: ("c2sc",))[#content]
  #show regex("[A-Z]{2,}"): match => {
    sc(match)
  }
  // captions in emph
  #show figure.caption: emph
  // Configure paragraph properties.
  #set par(leading: 0.65em, first-line-indent: 12pt, justify: true)
  #show par: set block(spacing: 0.65em)  

//
#title-slide[

  = STRUCTURAL DYNAMICS

  _Historical beginnings + Introduction_

  \
  C Kunte, March 2015

]

#slide[
  #side-by-side[
    
  #image("/inc/aristotle.jpg")

  ][

  = Agenda

  - On motion
  - Orbital complexity
  - Renaissance
  - Inertia
  - Kepler's laws
  - Isaac Newton, and his three laws
  - Mechanics
  - Statics, dynamics, and linearity
  - Simple dynamic model and SDOF
  - Acceleration, velocity, spring force
  - Dynamic amplification factor
  - Application: When to use what
  - Additional reading / viewing

  ]
]

#focus-slide[
  
  = On motion

]

#slide[

  == The difficulty in understanding

  #quote(block:true, attribution: [ARISTOTLE STAGIRITIS, 384--322 BCE])[_What about the fact that when things are thrown they continue to move when the thrower is no longer touching them? It would be impossible to explain why something which has been set in motion should stop anywhere why should it stop here rather than there?_]

  Aristotle struggled with the idea of how motion actually works, evident from above. The conceptual difficulty of defining motion remained up to and beyond Newton's time (17c.).

]

#slide[

  == Circular motion
  
  Aristotle defined circular motion, and shape of the heaven (celestial bodies) accurately:

  #quote(block:false, attribution: [Aristotle Stagiritis])[_Circular movement is the primary kind of movement. Only circular motion can be continuous and eternal. The shape of the heaven is of necessity spherical; for that is the shape most appropriate to its substance and also by nature primary._]

]

#slide[
  
  = Alexandria

  Two schools of thought:

  - Geocentric -- Ptolemy, the author of Almagest -- 200 AD
  - Heliocentric -- Aristarchus of Samoa -- 300 AD 

  The Church later supported the geocentric model, as it was popular, emphasised Earth's privilege.

]

#centered-slide[
  
  #figure(
    image("/inc/lib-alexandria.png"),
    caption: [Library of Alexandria, 300 BC]
  ) <la>

]

#focus-slide[
  
  = Orbital complexity

]

#slide[

  #side-by-side[

  - Ptolemy followed the rule that heavenly motions are perfect and so must be circular.

  - He realised that simple model of the Sun and the planets moving on circular paths centred on the Earth could never offer accurate results. 

  - The solution was a combination of circles.

  ][

  #figure(
    image("/inc/orbits.png", height: 80%),
    caption: [Geocentric model as imagined by Ptolemy]
  ) <orb>
    
  ]
]

#focus-slide[
  
  = Renaissance

  _fast forward by 1,800 years_

]

#slide[
  
  - Before 14 c., motion was not understood
  - 14 c. brought renaissance -- art led to geometry, mathematics, and eventually to physics
  - Renaissance renewed the curiosity about everything, including "heavenly" bodies
  - Discussing them, however, was a religious matter
  - Change it brought began challenging age-old conventions and thoughts
  - Among them was studying "heavenly" bodies (i.e. planets)
  - Copernicus was the first to realise ours was a heliocentric model

  #quote(block:true, attribution: [Copernicus, 1473--1543 AD])[_"We revolve around the Sun like any other planet."_]

]

#centered-slide[

  #quote(block: true, attribution: [Johann Wolfgang von Goethe])[_"Of all discoveries and opinions, none may have exerted a greater effect on the human spirit than the doctrine of Copernicus. The world has scarcely become known as round and complete in itself when it was asked to waive the tremendous privilege of being the centre of the universe."_]

]

#focus-slide[
  
  = Inertia

]

#slide[
  #side-by-side[
  
  - In 16 c., Galileo invented the telescope
  
  - His discoveries overturned 1,400 years of scientific wisdom
  
  - He was not alone. Tycho Brahe made similar breakthroughs. Kepler exchanged notes with Galileo
  
  - Based on his observations, Galileo first defined Inertia, as know today

  ][
    
    #figure(
      image("/inc/galileo-telescope.png", width: 85%),
      caption: [Galileo's telescope]
    ) <gt>
      
  ]
]

#focus-slide[

  #quote(block: true, attribution: [Galileo Galilei])[_"If an object is left alone, is not disturbed, it continues to move with a constant velocity in a straight line if it was originally moving, or it continues to stand still if it was just standing still."_]

]

#slide[
  #side-by-side[

    = Kepler's laws

    - The orbit of each planet is in shape of an ellipse with the Sun at one focus

    - In any equal time intervals, a line from the planet to the Sun will sweep out equal areas

    - The total orbit times for planet 1 and planet 2 have a ratio: $ a_1^(3/2) : a_2^(3/2) $

  ][
    #figure(
      image("/inc/kepler-pmot.png", width:80%),
      caption: [Planetary motions (Kepler)]
    ) <kp>
              
  ]
]

#centered-slide[

  #quote(block: true, attribution: [Johannes Kepler])[_"My goal is to show that the heavenly machine is not a kind of divine living being but similar to a clock work insofar as almost all the manifold motions are taken care by one single absolutely simple magnetic bodily force, as in a clockwork all motion is taken care by a simple weight. And indeed I also show how this physical representation can be presented by calculation and geometrically."_]

]

#slide[
  #figure(
    image("/inc/newton.png", width: 90%),
    caption: [Isaac Newton, 1642--1727 AD]
  ) <in>
    
]

#focus-slide[

  #quote(block: true, attribution: [Albert Einstein])[_"The whole evolution of our ideas about the processes of nature might be regarded as an organic development of Newton's ideas."_]

]

#centered-slide[

  #quote(block: true, attribution: [Einstein writing about his _Theory of Relativity_])[_"No one must think that Newton's creation can be overthrown in any real sense by this or any other theory. His clear and wide ideas will forever retain their significance as the foundation on which our modern conceptions of physics have been built."_]

]

#slide[
  #side-by-side[

  = Life of Newton

  - Joined the Cambridge Univ., as a student, then as a fellow, and as a professor spending 35 years there

  - He graduated with a bachelor of arts degree in 1665

  - Not an inspiring lecturer, he lectured to an empty room

  - Began working on optics, and invented reflecting telescope
    
  ][

  #figure(
    image("/inc/newton-telescope.png", width: 75%),
    caption: [Reflecting telescope]
  ) <rt>
    
  ]
]

#slide[
  
  = The Principia Mathematica

  $ F prop 1 / d^2 $

  - Newton's mathematical capability was unmatched; he put to great use

  - In response to Edmund Halley's challenge (1686), Newton produced a nine-page paper proving that the force (F) moving a planet was inversely proportional to the square of planet's distance (d) from the Sun

  - Amazed by the paper, Halley encouraged Newton to write in depth, resulting in this tour de force, "Philosophiae Naturalis Principia Mathematica"
]

#slide[
  
  = Newton's three laws

  - Newton followed Galileo closely -- read all his notes, commentaries, and books

  - Newton adopted Galileo's definition inertia for heavenly bodies to earthly bodies as his first law

  - The next thing needed a rul to find how an object changes its speed if something is affecting it; equating momentum to force became the second law

  - Lastly, conservation of momentum, i.e., F = -F became the third law

]

#slide[

  = The second law: momentum and force

  #side-by-side[
    
  - Newton's second law provided a method of determining how velocity changes under different influences called forces

  - This is the foundation equation in structural dynamics

  ][

  $ F = d / (d t) (m v) $

  $ F = m (d v) /  (d t) = m a $

  Note the slight difference between two equations. The second assumes constant mass -- for simplicity

  ]
  
]

#slide[

  = Mechanics

  - Quantum (new): subatomic behaviour -- no further discussion here
  - Classical
    - Newtonian mechanics -- kinematics (the original theory of motion), and dynamics (forces)
    - Statics -- semi-rigid bodies in mechanical equilibrium
    - Solid mechanics, elasticity -- properties of deformable bodies
    - Fluid -- motion of fluids
    - Continuum -- mechanics of continuation (both solids and fluids)
    - Hydraulics -- mechanical properties of fluids
    - Soil -- mechanical behaviour of soils

]

#slide[
  
  = Statics, dynamics and linearity

  - Statics - time invariant

  - Dynamics - time variant

  - Dynamic systems can be linear if:
    - Amplitudes of displacement and load are proportional
    - Stress is proportional to strain (damping acceptable)
    - Mass needs to be constant
]

#slide[
  
  #figure(
    image("/inc/simple-dyn-model.png", width: 100%),
  )
    
]

#slide[
  
  #figure(
    image("/inc/k.png", height: 100%),
  )
    
]

#slide[
  = Effective stiffness
  #side-by-side[

  Stiffness in parallel get added: two legs of a portal frame.

  Stiffness in series are calculated for effectiveness. Examples: haunched beams, soil layers.
    
  ][

    #figure(
      image("/inc/effective-k.png", height: 80%),
    )
    
  ]
]

#focus-slide[
  
  $ F = k times d $

  _static_

  $ F = m times a $

  _dynamic_

  $ k times d = m times a $

]

#centered-slide[

  = Oscillation of a SDOF: No forcing and no damping

  #side-by-side[
    
  #figure(
    image("/inc/disp.png", width: 100%),
    caption: [Displacement]
  ) <x>

  ][
    
  At any time, $t$, the corresponding displacement is $x$, then the restoring force will be $f_k = K x$

  When in motion,

  $ 
    M accent(x, diaer) = -f_k = -K x \
    M accent(x, diaer) + K x = 0
  $

  Solving this above quadratic equation for $x = x_o "at" t = t_o$

  $ x = x_o cos( sqrt(K/M) (t - t_o) ) "for" t > t_o $
    
  ]
]

#centered-slide[
  #side-by-side[
    
  = The solution, $x$

  \

  Response is harmonic

  \ 

  Deflection amplitude is $x_o$

  \

  Oscillation (natural) frequency is

  \

  $ omega_n = sqrt(K/M) $

  ][
    
  *Acceleration* $accent(x, diaer) = -omega_n^2 x_o cos(omega_n (t - t_o))$

  \

  *Velocity* $accent(x, dot) = -omega_n x_o sin(omega_n (t - t_o))$

  \

  *Spring force* $K x = K x_o cos(omega_n (t - t_o))$

  \

  _Undamped:_ free to vibrate (no resistance) 

  ]
]

#centered-slide[
  #side-by-side[
    
  #figure(
    image("/inc/sdof-oscillation.png", width: 100%),
    caption: [Steady state oscillation of a SDOF with forcing and viscous damping]
  ) <sd>

  ][
    
  #figure(
    image("/inc/t-h-resp.png", width: 54%),
    caption: [Time history response]
  ) <thr>

  ]
  
  Damping as a force (resistance to unrestricted motion), $f_d$ may be writtn as $f_d = C accent(x, dot)$
]

#centered-slide[
  
  Applied cyclic load in the presence of damping, \

  where $f$ is a sinusoidally varying function of $t$ at frequency $omega$

  $ f(omega t) = f_o cos(omega t) $

  The equation of motion thus becomes

  $ M accent(x, diaer) + C accent(x, dot) + K x = f_o cos(omega t) $

]

#centered-slide[
  
  Amplitude of the motion (from steady state, and algebraic substitutions):

  $ x_o = f_o / sqrt( (K - M omega^2)^2 + C^2 omega^2 ) $  

  Phase lag angle between applied force and resulting motion:

  $ phi = tan^(-1)((C omega) / (K - M omega^2)) $

]

#centered-slide[
  
  = Dynamic amplification factor, Q

  $ Q = "amplitude of displacement" / "equivalent static displacement" = x_o / ( (f_o / K) ) $

  $ Q = 1 / sqrt( (1 - Omega^2)^2 + (2 xi Omega)^2 ) $

  Frequency ratio: $Omega = omega / omega_n = "Forcing frquency" / "natural frequency"$

  \

  Damping ratio: $xi = C / (2 M omega_n) = C / (2 sqrt(M K) )$, where $2 sqrt(M K)$ is _critical_ damping

  \

  At resonance ($Omega = 1$): $Q = 1 / (2 xi)$

]

#centered-slide[
  
  #figure(
    image("/inc/daf.png", height: 100%),
    caption: [Dynamic amplification]
  ) <daf>
    
]

#centered-slide[
  
  #figure(
    image("/inc/application.png", height: 100%),
    caption: [Application: When to use what]
  ) <appl>
    
]

#slide[

= Additional reading / viewing

- Justin Pollard, _The rise and fall of Alexandria_

- Alejandro Amenabar, _Agora_

- Colin Pask, _Magnificent Principia_

- Caltech, _Feynman's lectures on Physics_

- Barltrop and Adams, _Dynamics of fixed marine structures_
  
]

#centered-slide[

  = Thank you. Questions?

]