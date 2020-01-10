# Mascii 2.0 
Welcome to the _Musical Ascii_ ("Mascii") polyphonic notation system, the fastest way to jot down tunes, harmonies, and musical sketches using any ordinary text input device like a computer keyboard or mobile phone.  

Once notated in Mascii, a piece can then be converted to a variety of formats including standard printed sheet music, playable sound files, and many other widely used formats. 

Mascii is great for emailing, embedding in web pages, or using in a wiki page, among other uses, making it ideal for sketching, jotting down, and sharing musical ideas from any computer keyboard.  Mascii prioritizes the full and easy expression of the essence of Western polyphonic music with a terse, minimalist syntax, making it particularly efficient for jotting down musical thoughts regardless of harmonic and rhythmic complexity. 


## Mascii 2 Examples

See [mascii.org](http://mascii.org) for full examples of Mascii 2 in action.  Then see below to learn how you can use it.


## Pitch

#### Small letters rise, big letters fall

Here is the American folk tune Oh Susanna, written in Mascii 2 notation:

```
%  %  %  [c d] | e  g  g. a 

G  E  C.    d  | e  e  D  C 

d
```

The song above contains five measures, each on its own line, and starts its first measure with three rests indicated by `%` signs.  Then the first note is a `c`, followed by a `d`.  

But how did we express that we wanted to move *up* the scale one step to the d directly above, not *down* 6 steps to the `d` that is below `c`?
That is controlled by capitalization.  Each note has a relationship to its prior note: starting from the prior note, a small (lowercase) letter *rises upward* to the first matching tone, while a big (capital) letters *sinks downard* to the first matching tone. The magnitude of this movement can also be amplified by preceding the note with exclamation marks.  

For example, if the starting note was `4c` (scientific pitch notation), then:

`c d` yields the pitches 4c 4d

`c !d` yields the pitches 4c 5d

`c !!d` yields the pitches 4c 6d

`c D` yields the pitches 4c 3d

`c !D` yields the pitches 4c 2d


Mascii also supports explicit scientific pitch notation if ever needed (but generally the relative notation shown above should be preferred for its concision):
`4c 4d`

#### How to repeat the same note?
A note which immediately follows another having the same letter name and same capitalization indicates a repeated note.  For example in the Oh Susanna tune above, the 5th note (g) was a repeat of the 4th.

#### Sharps and flats (accidentals)

Here is d sharp:
`d#`

Here is d flat (remember, "at" rhymes with "flat"):
`d@`

Here is d with explicit natural:
`d=`

Double sharps and flats are also supported.

Once a note is sharped or flatted, the sharp or flat ("accidental"), subsequent notes of the same degree within the same measure will by default automatically receive the same sharp or flat, just like in regular sheet music.

## Rhythm

#### Basics
Looking at the Oh Susanna score, how did Mascii determine that the first two notes were eighth notes, while the preceding rests were quarter notes?  And in the last measure, how did we indicate that the final note was a whole note, not a quarter note like in previous measures?

Mascii divides the time for each measure equally among all the elements in the measure.  Since measure four had four elements (the notes `e e D c`), each note received 1/4 of the measure's time and therefore became a quarter note.

Similarly, the final measure had only one element (the note `d`), so the entire measure's time was poured into that single element, which became a whole note.

The first measure however had something interesting: the pair of brackets `[` and `]`.  These brackets form a "group", which is treated as a single element in the measure.  

Thus the first measure actually has four elements: three rests denoted by `%` followed by one group consisting of `[c d]`. So dividing equally among the four elements, the rests became quarter-note rests, while the group likewise has a total duration of one quarter note.  

But the group itself contains of two elements within it: the notes `c` and `d`. A group's time, just like a measure's time, gets divided evenly among its elements.  

Therefore since this group has two elements, each receives half of the group's time.  We saw earlier that this group has a time duration equivalent to a 1/4 note, so half that is 1/8.  Therefore the `c` and `d` in measure one are eighth notes.

Groups in turn may themselves contain other groups, yielding unlimited rhythmic possibilities.  Here, for example, are triplet eighths followed by a regular eighth and then two sixteenths:
```
[D  e   C#]  [d  [e  f]]
```

Note that spacing is largely a matter of taste -- any number of 1 or more sequential spaces are treated the same, so additional spaces can be used for pretty formatting.  In other words, this:
```
c d e c
```

is identical to this:
```
c   d   e   c
```

So its a matter of style how many spaces you use.  It can be visually pleasing to adopt a consistent spacing between elements.  Spacing can also be used to roughly align vertical harmonies, as is commonly done in regular sheet music (see the section on polyphony in this document).

#### Triplets and other Tuplets
See how easy triplets and other tuplets become with this system.  To write a triplet, just put three notes in your measure or group, and they'll divide three ways evenly.


#### Dotted rhythms
Notice the dotted rhythms in bars 2 and 3.  Dotted rhythms work similarly to how they do in standard music notation, elongating the dotted note by half.  There is no need to explicitly shorten the note that follows a dotted one: mascii does that automatically for you.

Groups can also be dotted, eg:
```
[ce]. Df  Eg
``` 

Double dotted rhythms are also supported.


#### Tying notes together
Ties are written like this:

```
c_  _c  d   e
```

This creates a half note c followed by two quarter notes.  The above syntax `_c` explicitly ends the c note, but you may also use a more general syntax `_*` to end all currently tied notes (this syntax is reminiscent of when to lift the sustain pedal in piano notation):
```
c_  _*  d   e
```

Here's an example of a tie which spans two measures with many internecine notes:
```
eC_ g   F   g   a   G   a   F   |  _*g 
```

Notice how the end of the tied C note coincides with the start of the g note in the second measure.  When tie endings are concurrent with other notes starting, the tie endings should be written prior (meaning to the left of) any new notes being started.

Only individual notes can be tied, not groups.  To tie a group of notes, each note within the group must be tied individually.

Here are the opening bars of the first prelude in Bach's WTC book I:

```
%   %   g   c   e   G   c   e
[C_ e_] %       %       _* 

%   %   G   c   e   G   c   e
[C_ e_] %       %       _* 

```

#### Double underscore: A versatile shortcut
Since it is so common to tie two adjacent notes together, there is a special shortcut syntax to do this: the double underscore __

For example, this:
```
c_   _c   d   e
```

Could be rewritten as:
```
c__    d   e
```

This is especially convenient for syncopation, as seen in the Joplin pieces earlier.

The double underscore can also be applied to groups (unlike regular ties which must be written separately for each note):
`[ceg]__   F  D`

This is effectively equivalent to:
`[c_e_g_]  _c_e_g   F  D`

That means you can even do something like this snippet (the Elvis classic "I can't help falling in love with you"), where a triplet is spread across the timespan of two notes:
```
d % e % f % [g a b@]__ | A G F %
```

The double underscore also gives us a convenient way to write quarter, eighth, quarter, eighth as is common in "three-feeling" songs like waltzes, gigues, or swing tunes:

Here is an excerpt from Chopin's waltz the Grande Valse Brillante:

```
{
    key:  d@
    time: 3/4
    tempo: 180
}
!eg__       B=d=  | Ce    [A    A]    A
!A    (ec)  (ag)  | A     (ec)        (ag)

gb__        E=g=  | Fa    [A    A]    A
d     (fd)  (af)  | d     (fd)        (af)
```


## Polyphony: simultaneous musical lines
Simple ad-hoc polyphony can be introduced anywhere in the music by writing more than one note within the same element.

For example, here is a C-major chord:
```
ceg
```

These are part of the same timing element because there are no spaces between the notes.

Here are four chords, each a quarter note in length:
```
cegc !Aegc !!Dafc !Gdfb
```

You may be wondering how chords affect the pitch basis for calculating up/down movement, and the answer is that simultaneous notes are read from left to right, just as if they had been sequential.  

So in the above example, the initial `c` defaulted to the starting octave range, then the `e` was relative the the prior `c`, then `g` was relative to `e`, and the last tone in the chord, `c`, was relative to the `g`, making it an octave higher than the initial `c` was.  Then the `A` in the subsequent chord was relative the the last `c` of the prior, hence we needed a capital `A` with exclamation to get back to our desired octave range.  (Note that an alternative way to handle pitch basis shifts is to insulate them with parentheses, as discussed later in this document.)

Next, here is a more complex polyphonic passage consisting of three paired groups.  Because each group within the pair touches its neighboring group with no spaces in between, the two groups are played simultaneously for a 3-on-2 effect (this example is from a Mozart piano sonata, K 332):
```
[c e g][d# e] [!C e g][d# e] [!C e g][d# e]
```

While the above is suitable for short bursts of polyphony, generally it is easier to write another part into your score. Using separate parts, the above mozart example can be rewritten as:

```
{
    key: g
    time: 3/4
}
!d# e   D#  e  D#  e
c e g   C e g  C e g  
```

As you can see, simultaneous measures are stacked vertically on top of each other.  Thus each part or "instrument" has its own row.  In this case the left hand bass line is in the bottom row, while the melody is in the top.

We've also added a time signature at the top to improve the visual display in sheet music (otherwise 4/4 is assumed).

Now let's add a bass line to our Oh Susanna song:

```
%   %   %   [c  d]  | e   g   g.  a 
%                   | C       G      

G   E   C.  d       | e   e   D   C 
c       G           | c       [e  f#] 

d
g   F   E   D  
```

Here we have 5 bars of polyphonic music, containing a melody line on top and a bass line just beneath it.  Notice how we may use either the | character or a double carriage return to separate measures.  Here we've used a mixture of both.

Notice that each part keeps track of its own pitch basis, so for example nothing you do in your bass line will have any effect on your soprano line.

### [] vs ()
Parentheses () create groups just like brackets [] but parentheses also serve an additional purpose: to isolate any pitch basis changes from the rest of the piece.  So this:

```
g | [a b c d] | [B c d e] | C
```

could also be written like this:

```
g | (a b c d) | (b c d e) | c
```

It works because while the pitch basis changed with every note inside the parentheses, once the parentheses exited the original pitch basis was restored.

So originally, the `B` was capitalized because it was being calculated from the note physically written to its immediate left, the `d`.  But in the second version, the parentheses isolated the pitch basis changes `(a b c d)`, so that the b is now calculated from the same `g` basis that the first `a` was calculated from.  

Here is another rendition of Oh Susanna, this time with some filled out chords for the bass, which we'll isolate from their surrounding context with parentheses:

```
 %   %   %   [c  d]     | e     g     g.      a
 %                      | C     (ceg) (G) (ceg)


 G     E     C.      d | e     e     D     C
(C)   (ceg) (G) (ceg)  | (C)   (ceg) e     f#


 d
 g     F     E     D
```

Notice how we've used parentheses for the chords to insulate the surrounding bass line from the chordal pitch shift basis changes.  That way we don't have to write subsequent ! marks to jump back to the desired octave range for subsequent notes.

## Lyrics
Let's add lyrics to Oh Susanna:
```
%   %   %   [c  d]     | e     g     g.      a
"            well I    | come from   a      la"
%                      | C     (ceg) (G) (ceg)


 G     E     C.      d  | e     e     D     C
"ba    ma    with    my | ban   jo   on     my"
(C)   (ceg) (G) (ceg)   | (C)   (ceg) e     f#


 d
"knee"
 g     F     E     D
```
Verses appear just below the part to be sung.  Each horizontal verse line must begin with a double quote (it can optionally end with one too).  Multiple verses can be written as consecutive verse lines, like so:

```
%   %   %   [c  d]     | e     g     g.      a
"            well I    | come from   a      la"
"            I  -      | had   a     dream   the"
%                      | C     (ceg) (G) (ceg)


 G     E     C.      d    | e     e     D     C
"ba    ma    with    my   | ban   jo   on     my"
"oth  er    night    when | eve   ry   thing  was"
(C)   (ceg) (G) (ceg)     | (C)   (ceg) e     f#


 d
"knee"
"still"
 g     F     E     D
```

Each note in the line above a verse must be matched by a word in the verse line.  You can use % or - as verse fillers as needed.

## Comments
Any line that starts with at least two hyphens, -- is considered a comment and is disregarded by the Mascii parser.

This allows you some freedom to decorate your score for readability and to write instructions or lyrics or other text that may be useful to readers of your score.  For example::

```
-- vamp this section until singer is ready
------------- singer, sing softly
a c e 
------------- bass, plucked
B     
```

Here is Bach's Air on the G String using comment lines to decorate the score:
```
{
    key: d
    tempo: 40
    patch: 41, 41, 42, 43
}

---------------------------------------------- violin 1 
!f_                               
---------------------------------------------- violin 2
!d_                               
---------------------------------------------- viola 
a        b                        
---------------------------------------------- cello 
D d C !C B b A !A                 
----------------------------------------------


---------------------------------------------- violin 1 
[_f [b G]]  [[[F E] D] [C d]]    C     [.B A]  
---------------------------------------------- violin 2
[_d  B]     A_                          
---------------------------------------------- viola 
[B   e]     e_                             
---------------------------------------------- cello 
G    g      g#         G#        a !a  G= !G                  
----------------------------------------------


---------------------------------------------- violin 1 
a_                     [_a F C= B e D# a G]      
---------------------------------------------- violin 2
_A [c= B] c [a C]      B   %    %    %    
---------------------------------------------- viola 
_e  D#    D# e         f   %    %    %          
---------------------------------------------- cello 
F   f     E !E         D#  d#   B    b         
----------------------------------------------


---------------------------------------------- violin 1 
G_                     [_G E B A d C g F]
---------------------------------------------- violin 2
B [e D] [e f] [g E]    A   %   %   % 
---------------------------------------------- viola 
E  B_   _B     e       e   %   %   %
---------------------------------------------- cello 
E! e     D=   !D=      C   c   A   a  
----------------------------------------------

```
 
## Meta-instructions
Meta-instructions are enclosed in {} and are written at the top of the piece.  Each meta-instruction is written on a separate line within the {}.  We've already seen a few meta-instructions in earlier examples.  Here is a complete list of meta-instructions available:

```
{
    tempo: 120
    time:  4/4
    key:   C#m
    patch: 41, 43
    copyright: ari
}
```

The above specifies that the tempo is 120 bpm, the time signature is 4/4, the key is C sharp minor, and the midi voices to use for the parts are 41 and 43 respectively (this implies that there are two parts).  The midi patch numbers refer to the general midi convention, reproduced here for convenience:

1.	Acoustic Grand Piano
2.	Bright Acoustic Piano
3.	Electric Grand Piano
4.	Honky-tonk Piano
5.	Electric Piano 1
6.	Electric Piano 2
7.	Harpsichord
8.	Clavi
9.	Celesta
10.	Glockenspiel
11.	Music Box
12.	Vibraphone
13.	Marimba
14.	Xylophone
15.	Tubular Bells
16.	Dulcimer
17.	Drawbar Organ
18.	Percussive Organ
19.	Rock Organ
20.	Church Organ
21.	Reed Organ
22.	Accordion
23.	Harmonica
24.	Tango Accordion
25.	Acoustic Guitar (nylon)
26.	Acoustic Guitar (steel)
27.	Electric Guitar (jazz)
28.	Electric Guitar (clean)
29.	Electric Guitar (muted)
30.	Overdriven Guitar
31.	Distortion Guitar
32.	Guitar harmonics
33.	Acoustic Bass
34.	Electric Bass (finger)
35.	Electric Bass (pick)
36.	Fretless Bass
37.	Slap Bass 1
38.	Slap Bass 2
39.	Synth Bass 1
40.	Synth Bass 2
41.	Violin
42.	Viola
43.	Cello
44.	Contrabass
45.	Tremolo Strings
46.	Pizzicato Strings
47.	Orchestral Harp
48.	Timpani
49.	String Ensemble 1
50.	String Ensemble 2
51.	SynthStrings 1
52.	SynthStrings 2
53.	Choir Aahs
54.	Voice Oohs
55.	Synth Voice
56.	Orchestra Hit
57.	Trumpet
58.	Trombone
59.	Tuba
60.	Muted Trumpet
61.	French Horn
62.	Brass Section
63.	SynthBrass 1
64.	SynthBrass 2
65.	Soprano Sax
66.	Alto Sax
67.	Tenor Sax
68.	Baritone Sax
69.	Oboe
70.	English Horn
71.	Bassoon
72.	Clarinet
73.	Piccolo
74.	Flute
75.	Recorder
76.	Pan Flute
77.	Blown Bottle
78.	Shakuhachi
79.	Whistle
80.	Ocarina
81.	Lead 1 (square)
82.	Lead 2 (sawtooth)
83.	Lead 3 (calliope)
84.	Lead 4 (chiff)
85.	Lead 5 (charang)
86.	Lead 6 (voice)
87.	Lead 7 (fifths)
88.	Lead 8 (bass + lead)
89.	Pad 1 (new age)
90.	Pad 2 (warm)
91.	Pad 3 (polysynth)
92.	Pad 4 (choir)
93.	Pad 5 (bowed)
94.	Pad 6 (metallic)
95.	Pad 7 (halo)
96.	Pad 8 (sweep)
97.	FX 1 (rain)
98.	FX 2 (soundtrack)
99.	FX 3 (crystal)
100.	FX 4 (atmosphere)
101.	FX 5 (brightness)
102.	FX 6 (goblins)
103.	FX 7 (echoes)
104.	FX 8 (sci-fi)
105.	Sitar
106.	Banjo
107.	Shamisen
108.	Koto
109.	Kalimba
110.	Bag pipe
111.	Fiddle
112.	Shanai
113.	Tinkle Bell
114.	Agogo
115.	Steel Drums
116.	Woodblock
117.	Taiko Drum
118.	Melodic Tom
119.	Synth Drum
120.	Reverse Cymbal
121.	Guitar Fret Noise
122.	Breath Noise
123.	Seashore
124.	Bird Tweet
125.	Telephone Ring
126.	Helicopter
127.	Applause
128.	Gunshot

# FAQ

#### Is there anything like a "reverse dotted" note, where the first note is short and the second one is longer?

Yes, placing the dot *before* instead of after the note or group reverses its direction:

`.g e`

The above yields a `g` followed by `e` where the duration of the `e` is 3 times as long as the duration of the `g`.
This technique, or even a double-dotted reverse like `..g e` can be used to reasonably approximate a grace note or notes.


#### My waltz seems to be notated in 4/4 when I open the midi file in MuseScore.  Can't I specify a 3/4 time signature?
Sure you can, put this at the top of your file:
```
{ time: 3/4 }
```

### How does Mascii differ from other textual music notation systems like ABC, MusicXml, or Lilypond?
Each system has its strengths based on what its makers have prioritized; so picking the right one depends on your needs.  

Lilypond excels in producing highly polished sheet music, at the cost of some complexity and verbosity.  

ABC seems geared towards folk music, boasting a large vocabulary of specialized terms applicable to regional styles of folk music.  Richly polyphonic music can be complex to express in ABC.

MusicXml is hardly intended to be human readable or writable; rather its sweet spot is as a universal format for interchange between music software programs.

Other text-based notation systems include Guido, Philip's Music Writer, and MusiXTeX, as well as more programatic systems like Music21, Vexflow, and others.  And why limit ourselves to text input?  There's also the marvelous and free MuseScore graphical music software, as well as other paid options like Finale and Sibelius.  And many more.

But for me, several traits make Mascii the most efficient and convenient choice when jotting down musical ideas, mostly revolving around Mascii's relative nature, versus other programs' forced absolutism:

1. **Relative pitches, not absolute** - When I think of a tune, whether original or someone else's, I think in terms of a series of pitches where each pitch is relative to the prior pitch.  I do not think in any particular octave range; rather I think of the contours of the melodic line, in a sort of abstract "any octave" kind of range.  Mascii lets me write it exactly that way, never having to specify an octave range at all.  But every other notation system immediately forces me to specify one, not just once, but often repeatedly with every note or at least when crossing outside a fixed octave boundary (eg from b to c).  That's because other systems use absolute values, whereas Mascii has a "memory" (aka it is *context sensitive*), allowing it to understand what I wanted in a context-sensitive way, without my having to explicitly and redundantly specify it with each note.  Have you noticed how clean and free of markings Mascii is?  You generally write just the pitch and nothing else, yet still retain all the expressive power of more verbose systems.
2. **Relative rhythms, not absolute** - Similarly, when I think of a rhythm, it is really a set of ratios relative to each other.  I do not much care whether it is a quarter note in 4/4 time or an eighth note in 2/4 time; these are effectively the same thing.  Yet every other notation system, including even standard sheet music itself, immediately forces you into absolute rhythmic values, which does not match how I think. It is a cognitive burden that interferes with my ideation. 
3. **No petty arithmetic** - I often know that I want a particular ornamental run or flourish to fit within a particular rhythmic unit so that a critical following note strikes at a particular point in the beat.  I do not particularly know or care whether these notes in the flourish will need to be 16ths, 32nds, some Chopin-esque 7ths or another fraction in order to fit within that space; it is a distraction and nuissance to have to calculate this.  Yet every other system, including sheet music itself, forces you into this world of pencil-pushing arithmetic with every note.  Mascii does not.  Put as many notes as you need in the desired rhythmic space, and Mascii will do all the math for you so that it fits perfectly, every beat, in every bar.  Everything adds up perfectly and automatically.
4. **Ubiquity** - This goes for all text-based systems, but I just love that anywhere I can type, I can write music, whether on my phone or on a computer, in an email, a text, or just plain pen and paper.  No fancy software required, Mascii is really just a notation format, independent of any software.  (Indeed, I've used it for years, long before creating this software.)  Of course, when it is time to produce a finished score for publication, then I would surely reach for a richer toolset like MuseScore, which I can easily import into from Mascii, but during the ideation stage, Mascii is my axe of choice to capture the musical essence of an idea, sans expression markings and other non-essentials, so that any competent musician could read, hear, and understand my musical intent from the resulting Mascii-generated sheet music.  It's all I need.

### What enhancements are planned for future releases?
1. formal recognition of chord symbols.  Currently you could add them to lyrics or put them in a comment, but they are not recognized as anything special, so will not be placed correctly in sheet music for example
2. trill and ornament markings
3. song titles
4. a website where Mascii can be instantly converted to sheet music and sound files online for easy sharing

### How were the sheet music and mp3s in this readme created?
All of the sheet music and mp3 files in this readme were generated via the following process:
1. write the musical excerpt in Mascii
2. use the software contained in this project to convert the Mascii notation into a midi file.
3. open the midi file in the free and excellent MuseScore software
4. take a screengrab or export to PDF format
5. export mp3 file
6. steps 3 thru 5 can actually be automated; see the scripts in the /scripts folder for examples of how to do it

This project currently supports direct conversion of plain Mascii 2 text notation into midi, a universal sound notation language for computers.  This midi file can then be imported into many other programs, such as the free and excellent MuseScore, to be viewed and printed as traditional sheet music, or output into other formats like mp3 for listening or MusicXml for import into other programs.  In future, this project or a companion website may support direct conversion from Mascii into pdf, mp3, or MusicXml, but currently only midi output is directly supported.


# How to install Mascii 2

1. download the jar from this repo, or simply clone this entire repo
2. setup an alias in your .bashrc or .bash_profile like this, substituting /YOUR/ACTUAL/PATH with your actual path to the jar:
alias mascii='java -jar /YOUR/ACTUAL/PATH/mascii-quickstart/bin/mascii-*.jar'
3. restart your command line shell for your alias to take effect

# How to run Mascii 2
1. make sure Mascii is installed as described above.
2. make sure you have java 1.8+ installed on your system
3. write your mascii piece in a text file (in this example we'll call it "your-text-file.mascii"), then use mascii like this to generate a midi file (.mid):
```
    mascii your-text-file.mascii
```

This generates a midi file in your current directory which you can then open with MuseScore to see the score and export it to other formats, eg MusicXML, mp3, pdf, etc. (MuseScore is an excellent free music editing program which you can download from their website at https://musescore.org)


# For Developers
The source code for Mascii is [here](https://github.com/arikast/mascii-source)
