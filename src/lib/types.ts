export interface PublicProfile {
  slug: string;
  full_name: string;
  title: string;
  organization: string;
  bio: string;
  phone: string;
  whatsapp_message: string;
  email: string;
  location: string;
  website: string;
  avatar_path: string | null;
  published: boolean;
}

export interface SocialLink {
  id?: string;
  platform: string;
  url: string;
  position: number;
}
