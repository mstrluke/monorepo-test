root:
 - pnpm install

apps/expo-app:
 - pnpm ios or pnpm android

apps/services/api-gateway:
 - pnpm start (will start on 3000)

apps/services/auth-service:
 - pnpm start (will start on 3001)

NATS:
docker run -p 4222:4222 nats:latest

Notes:
update supabase urls in apps/services/auth-service/src/app.service.ts

```
const supabaseUrl = 'supabaseUrl';
const supabaseKey = 'supabaseKey';
```
