# Organizer Instructions — Team Rocket CTF Challenge

# !! DO NOT include this file in the zip given to participants !!

\---

## Challenge Overview

Theme: A careless Team Rocket grunt left credentials scattered across a repo.
Skill taught: Recon inside a repo — reading config files, logs, and encoded values.

\---

## The Full Challenge Chain

### Entry Point (give to participants separately, NOT in the zip)

Hand them this MD5 hash:   5f4dcc3b5aa765d61d8327deb882cf99

Flavour text to give them:
"A Team Rocket grunt forgot their login password. All we have is this hash.
Crack it to gain access to their internal repository."

* Crack via crackstation.net → plaintext is:  password
* Cracking it is the "key" to receive this zip / repo link.

\---

## Step 1 — Recon: Deprecated Folder (Easy)

File:    scripts/deprecated/old\_config.sh
Finding: OLD\_DEPLOY\_KEY="flag{r0ck3t\_no\_team\_rocket}"

This is a DECOY FLAG — award minor/partial points or use as a checkpoint.
Lesson:  Always check deprecated/ and old/ folders.

\---

## Step 2 — ROT13 (Medium)

File:    config/.env.example
Finding: DEPLOY\_KEY=synt{e0px3g\_ab\_grna\_ebpxrg}
Logs hint clearly: "DEPLOY\_KEY is ROT13 in .env.example"
Decoded: flag{r0ck3t\_no\_team\_rocket}

This matches the decoy — intentional, confirms they decoded correctly.
Lesson:  Cross-reference logs with config files. ROT13 decoding.

\---

## Step 3 — Base64 (Medium)

File:    config/docker-compose.yml  (inside a comment)
Finding: # MASTER\_KEY: aGVhZHF1YXJ0ZXJzX2FjY2Vzcw==
Decoded: headquarters\_access

This is a red herring — not a flag, just an intermediate value.
Lesson:  Always decode Base64 strings. Check comments in config files.

\---

## Step 4 — Hidden in Plain Sight (Hard)

File:    assets/rocket\_logo.txt
Finding: <!-- flag{y0u\_f0und\_th3\_r3al\_flag} -->

Hidden as an HTML comment inside what looks like a plain ASCII art file.
Most participants skip non-code files entirely — that's the lesson.
Lesson:  Never skip "boring" files. Comments hide everywhere.

\---

## Hints You Can Give

|Hint #|Text|
|-|-|
|Hint 1|"Jessie always writes things down somewhere..."|
|Hint 2|"The logs mention how the key was encoded."|
|Hint 3|"The sysadmin said it's right in front of you."|
|Hint 4|"Sometimes art hides more than beauty."|

\---

## Flags Summary

|Flag|Location|Type|
|-|-|-|
|crack hash → "password"|Given separately (MD5)|Rainbow table|
|flag{r0ck3t\_no\_team\_rocket}|scripts/deprecated/old\_config.sh|Decoy/checkpoint|
|flag{r0ck3t\_no\_team\_rocket}|config/.env.example (ROT13)|ROT13|
|headquarters\_access|docker-compose.yml (Base64)|Red herring|
|flag{y0u\_f0und\_th3\_r3al\_flag}|assets/rocket\_logo.txt|MAIN FLAG|

\---

## Setup Instructions

1. Remove ORGANIZER\_INSTRUCTIONS.md before zipping for participants.
2. Give participants ONLY the MD5 hash as the entry point — not the zip yet.
3. Hand out the zip (or a GitHub link) after they crack the hash.
4. Optionally push to a throwaway GitHub account for extra realism.
5. Use flag{r0ck3t\_no\_team\_rocket} as a partial-points checkpoint flag.
6. Use flag{y0u\_f0und\_th3\_r3al\_flag} as the final submission flag.

