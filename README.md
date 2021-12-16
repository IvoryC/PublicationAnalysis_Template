# Publication Analysis Template

This is a template for repositories that accompany a publication and encapsulate the analysis component.

Not all projects will use this layout; and not all will have all of these components.

## Instructions

Many of these instructions mention the vague concept of "other people".  Do not dismiss these points because you do not expect other people to contribute to your project.  It is always good to be prepared for other people to join you and the resources you make for "other people" will undoubtedly be beneficial to future-you returning to this project after a weekend or a year or a decade. So take an hour or two now to fill in the READMEs.

After forking this template:

  * Review the permissions for your repository. Usually, you will make it private and invite any collaborators you need to share it with.
  * Edit this Readme file (and any others in the project) to reflect your project. Most sections have guidance in _italics_, you may choose to leave that in place through some of the development phase.
  * Add the tag "research-compendium" to this repository on github. 
  * Carefully review your metadata.  
    * **DO NOT EVER put identifiable data into git.**  
    * **Make sure the lead PI has given permission before any metadata is commited to git.**  Start by asking Dr. Fodor.
    * When you are given metadata, double check that there is no way to identify any human participants.
    * If you not completely sure that a file is ok to be public data, then DO NOT allow it to be committed in git. You can add that files name to your .gitignore, or use the NOT_IN_GIT string in the file name, or keep it out of the folder all together to keep it from being committed.
  * Replace the example(s) in `assembledFigures/` and `analysis/scripts/review.Rmd` with something that comes from this project--even if it is something entirely trivial, make it something that is derived from _your project_.  If you have any difficulty with editing and running the review module, seek help early.
  
As you develop this project:

  * Update the READMEs frequently.
  * Update the analysis/scripts/Review.Rmd module frequently.

When you submit your publication:

  * Make the repository public.
  * If you are in the FodorLab, create a fork of your project under the [FodorLab organization](https://github.com/FodorLab). This serves as a central hub for research-compendia for the Fodor Lab.
  * Create a tag / release to represent the exact version of the repository that corresponds to the publication. 
    * The tag should be something that can increment, such as "2020-JUN-06" or "version-1".  
    * Avoid using terms like "new" or "final".
    * The same commit that is tagged as "version-3" can also be tagged as "accepted-at-nature-medicine".
  * Add a URL to the repository in your publication.  If there are multiple forks, point to the one that is most likely to be maintained/updated in the future.
  * Update the top level Readme file with the publication title, finalized abstract, and note that it is submitted (or published).

NOT_IN_GIT
The .gitignore in this repository is configured to ignore any files that contain NOT_IN_GIT in the folder or file name.  There are several reasons you may store a file in your local repository folder without wanting to commit it. Including this string in folder or file names makes it very clear that these files are not under git version control.


**Everything above this line is for the template only. Delete it when/before you submit your publication.**
---

# Publication

## Title

_When applicable, include a link to the published manuscript_



**link**: (not yet published)

## Authors / contributors

_In this end, this will line up with the author list of the publication. EARLY on, assemble a list of people involved in the project, potentially including email addresses (in cryptic form: name at mail dot com)_



## abstract

_In the early development of your project, include a brief overview of the aim and design of your project.  Once you have written a formal abstract, put that here._




# Whats here

## AssembledFigures

_The (near) final publication figures.  These often include manual annotations.  It is recommended to include the corresponding figure legend as a readme or as individual files.  Resist the temptation to put figure numbers in the file names until you actually hit the submit button. Use concise but meaningful names throughout the development of the manuscript._



## Analysis

_The top level of the repository has info like "What was the research question" and "What was the answer". This folder covers "How did you come to that answer"_



## Output

_Selected subset of pipeline output that would be immediately relevant to the reader. Provide the reader with as much as they could reasonably be interested in, but avoid including large files in a git repository._

_For projects that use BioLockJ, the final completed pipeline can stored here. Many files may be deleted (including many outputs) but the structure of modules' outputs, logs and scripts provides organization._




# Whats NOT here

_This repository should be the central hub of your project. BUT there are things that should not or cannot be stored in git; make sure there is some single central document that tracks all of those things.  It is convenient if that document is a README in this repository, perhaps a **Whats not here** header in this file.  A few examples might include:_

  * _Names and contact info for people you will go to if you have questions or problems_
  * _File locations for sequencing data_
  * _Backup location for sequencing data_
  * _metadata that links the data you are analyzing to individuals_
  * _the source of data from related projects that are not yet published_

_Location of raw sequences (during analysis): <UNCC hpc cluster> /research/fodorlab/data/\<projectname\>/raw_

_SRA ID: PRJ######_

_Data backup location: Hard drive #8 under Jane's desk._

_The metadata file patient_outcomes_NOT_IN_GIT.xlsx is not available to the public.  The internal master copy is stored on Jane's laptop /Users/jane/Documents/thesis2020/chapter3/metadata_

_The slides to present this project are in Jane's Google Drive folder School/thesis/talks/_

_The in-progress figures and manuscripts for this project are in a Google Drive folder called "Generic_Analysis_2020" (talk to Jane for access)._

_**Often, even the location of these things is too risky to include in git.  Store your complete list of resources somewhere appropriately secure, and be sure to include the URL for this repository on that list.**_

_For the locations of project files not included in this repository, talk to Jane Exampleton._


# Notes to contributors

_A handful of bullet points about how you want the project to evolve. Were you aiming to keep all modules very concise? Keep the whole runtime low? Make tags at particular landmarks?  If a correction is needed (maybe a typo, or maybe a fundamental change in a major calculation)--how should the change happen?  Should the reader make a pull request? Create an issue? Should they just contact you describing the issue and hope you fix it?  How should they contact you? Are there other projects that should be kept in sync with this?_

_Optional - create subheadings such as **best practices** or **how to contribute to this project**_



# License

_It is highly recommended that you add a license. This communicates to others if and how you want to allow other people to view / use / build upon your work.  You can find guidance online, for example: https://choosealicense.com/_

_The MIT License is short and simple and the easiest to include here as a default.  You may decide the [BPLv3](https://choosealicense.com/licenses/gpl-3.0/) license, or some other license, is better for your project.  Choose whatever  you want, but don't use 'no license' out of laziness._

This lecense applies to the code in this repository.  The related publication and its components (such as figures and tables) are subject to the licencing and/or copywrite policies of the publisher.
 
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

