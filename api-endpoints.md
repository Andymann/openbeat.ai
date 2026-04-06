# OpenBeat.ai API Endpoints

Base URL: `https://openbeat.ai`

| Endpoint | Method | Auth Required | Purpose |
|---|---|---|---|
| `/api/auth/login` | POST | No | Login |
| `/api/auth/register` | POST | No | Register new account |
| `/api/auth/profile` | GET | Yes | Get user profile |
| `/api/auth/sendOtp` | POST | No | Send OTP |
| `/api/auth/forgot-password/send-otp` | POST | No | Password reset - send OTP |
| `/api/auth/forgot-password/verify-otp` | POST | No | Password reset - verify OTP |
| `/api/auth/forgot-password/reset` | POST | No | Password reset - set new password |
| `/api/tracks/my-tracks` | GET | Yes | Get current user's tracks |
| `/api/tracks/public` | GET | Yes | Get public tracks |
| `/api/tracks/stream/:id` | GET | Yes | Stream track audio |
| `/api/audio-to-midi/start` | POST | Yes | Convert audio to MIDI |
| `/api/bpm/extract` | POST | Yes | Extract BPM from audio |
| `/api/stems/extract` | POST | Yes | Stem separation |
| `/api/stems/download/:jobId` | GET | Yes | Download stems (add `?format=wav` for WAV) |
| `/api/admin/login` | POST | No | Admin login |
| `/api/admin` | GET | Yes | Admin panel data |
