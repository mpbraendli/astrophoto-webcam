astrophoto-webcam
=================

Set of scripts that I used to do some crude astro-photography with a webcam.

The picture of Saturn has been created in that way, with an old QuickCam, right
from the time when they invented colour webcams.
The lens was removed from the webcam, and the PCB with the bare CCD was
fastened in the ocular holder using an original contraption of duct tape and a
short plastic tube. Focus is achieved in the same way as with a normal ocular.

The idea is to record a video while you track the object of interest
and make sure it is in focus, and then use the video as source of frames
for you photo.

Scripts
-------

First, vlc is used to record a video from the webcam. See record.sh

Then, the convert.sh script is used to convert the video to rgb raw video.

At this point, you'll want to use something like Avidemux, Cinerella or
Kdenlive to select some frames from the video that you're interested in.
Extract each frame into a separate .jpg, and place them in a folder.

Also extract a frame with the telescope aperture covered with a dark cloth
or paper. This will be the ''dark frame''.

Substract the dark frame from each frame using 1\_substract-dark.sh

Execute 2\_align.sh that uses align\_image\_stack from hugin to align your
object on each frame. Do a visual inspection.

Average all aligned frames with 3\_average.sh

Enjoy your homemade picture of Saturn.

The test2 folder contains data used for the saturn.jpeg picture.
