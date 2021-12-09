# Publication Analysis Template

This is a template for repositories that accompany a publication and encapsulate the analysis component.

Not all projects will use this layout; and not all will have all of these componenets.

After forking this template:

  * Review the permissions for your repository. Usually, you will make it private and invite any collaborators you need to share it with.
  * Edit this Readme file (and any others in the project) to reflect your project. Most sections have guidance in _italics_, you may choose to leave that in place through some of the development phase.
  * Add the tag "research-compendium" to this responsitory on github.
  * Carefully review your metadata.  
    * DO NOT EVER put identifiable data into git.  
    * If you not completely sure that a file ok to be public data, then DO NOT allow it to be commited in git. You can add that file name to your .gitignore, or use the NOT_IN_GIT string to keep it from being commited.

When you submit your publication:

  * Make the repository public.
  * If you are in the FodorLab, create a fork of your project under the [FodorLab organization](https://github.com/FodorLab). This serves as a central hub or research-compendia for the Fodor Lab.
  * Create a tag / release to represent the exact version of the repository that corresponds to the publication. 
    * The tag should be something that can incriment, such as the date or "version-1".  
    * Avoid using terms like "new" or "final".
    * The same commit that is tagged as "version-3" can also be tagged as "accepted-at-nature-medicine".
  * Add a URL to the repository in your publication.  Recommended: use the URL that points to the FodorLab fork. 
  * Update the top level Readme file with the publication title, official abstract, and "submitted"

NOT_IN_GIT
The .gitignore in this repository is configured to ignore any files that contain NOT_IN_GIT in the folder or file name.  There are several reasons you may store a file in your local repository folder without wanting to commit it. Including this string in folder or file names makes it very clear that these files are not under git version control.

**Everything above this line is for the template only. Delete it when/before you submit your publication.**
---

# Whats here

## AssembledFigures

_The (near) final publication figures.  These often include manual annotations.  It is recommented to include the corresponding figure legend as a readme or as individual files.  Resist the temptation to put figure numbers in the file names until you actually hit the submit button. Use concise but meaningful names throughout the development of the manuscript._



## Analysis

_The top level of the repository has info like "What was the research question" and "What was the answer". This folder covers "How did you come to that answer"_


## Sequence Processing

_Sometimes called "PreProcessing". Technically this is part of the Analsysis, but 

## Output

_Selected subset of pipeline output that would be immediately relevant to the reader. Provide the reader with as much as they could reasonably be interested in, but avoid including large files in a git repository._

_For projects that use BioLockJ, the final completed pipeline can stored here. Many files may be deleted (including many outputs) but the structure of modules' outputs, logs and scripts provides organization._



# Publication

## Title

_When applicable, include a link to the published manuscript_



## Authors / contributors

_In this end, this will line up with the author list of the publication. EARLY on, assemble a list of people involved in the project, potentially including email addresses (in cryptic form: name at mail dot com)_



## abstract

_In the early develeopment of your project, include a brief overview of the aim and design of your project.  Once you have written a formal abstract, put that here._



# License

_It is highly recommended that you add a license. This communicates to others if and how you want to allow other people to view / use / build upon your work.  You can find guidance online, for example: https://choosealicense.com/_

_The MIT License is short and simple and the easiest to include here as a default.  You may decide the [BPLv3](https://choosealicense.com/licenses/gpl-3.0/) license, or some other license, is better for your project.  Choose whatever  you want, but don't use 'no license' out of laziness._

MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

