# Installer distribution migration evidence

- Date: 2026-11-15 (Hawaii); automated GitHub Actions in UTC 2026-11-16.
- Status: **MIGRATED — LEGACY PRE-RELEASE**, not a final Windows acceptance signoff.
- Original tracked asset: `installer/OTS_Clipboard_History_Setup.exe`; size 52,430,504 bytes.
- SHA-256: `9974c50d7b82adf507181522ce3667024a5fbbd434732ab79691dd6efabaf268`.
- Release: [v1.2.2-legacy-preview](https://github.com/ohanatechsolutions/OTS_Clipboard_History/releases/tag/v1.2.2-legacy-preview); published as **pre-release**, with both installer and original checksum.
- [Migration workflow run 43795609480](https://github.com/ohanatechsolutions/OTS_Clipboard_History/actions/runs/43795609480): **SUCCESS** — executable MZ and PE headers, architecture, embedded source-tree checksum, publication and byte-for-byte download comparison.
- [Windows installer build run 43795609522](https://github.com/ohanatechsolutions/OTS_Clipboard_History/actions/runs/43795609522): **SUCCESS** — separate build workflow; does not alone prove legacy installer compatibility.
- [Publication security scan 41720363095](https://github.com/ohanatechsolutions/OTS_Clipboard_History/actions/runs/41720363095): previously **SUCCESS** on an earlier revision, not re-run for this exact build.
- Removed the tracked `.exe` and `.exe.sha256` from `main` only after release integrity verification.
- Build workflow and `.gitignore` no longer commit new packaged binaries into the source tree.
- Still **NOT RUN** for this historical asset: clean Windows install/launch/uninstall acceptance, Authenticode signer verification, independent malware reputation checks and final production signoff.
- Binary remains accessible in prior Git history; no destructive history rewrite was authorized or performed.
- Other project phases (noninstaller code changes): **N/A** — this work moved existing distributables; it did not alter application features.
