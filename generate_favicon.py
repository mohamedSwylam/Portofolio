#!/usr/bin/env python3
"""
Script to generate favicon from avatar image
Requires: pip install Pillow
"""

from PIL import Image
import os

def create_favicon():
    # Path to your avatar image
    avatar_path = "assets/images/avatar.png"
    output_dir = "web"
    
    if not os.path.exists(avatar_path):
        print(f"Avatar image not found at {avatar_path}")
        return
    
    try:
        # Open the avatar image
        with Image.open(avatar_path) as img:
            # Convert to RGBA if not already
            if img.mode != 'RGBA':
                img = img.convert('RGBA')
            
            # Create different sizes for favicon
            sizes = [16, 32, 48, 64, 128, 256]
            images = []
            
            for size in sizes:
                # Resize image maintaining aspect ratio
                resized = img.resize((size, size), Image.Resampling.LANCZOS)
                images.append(resized)
            
            # Save as ICO file (multi-size)
            ico_path = os.path.join(output_dir, "favicon.ico")
            images[0].save(ico_path, format='ICO', sizes=[(size, size) for size in sizes])
            print(f"Favicon created: {ico_path}")
            
            # Also save as PNG for better compatibility
            png_path = os.path.join(output_dir, "favicon.png")
            images[2].save(png_path, format='PNG')  # 48x48 size
            print(f"PNG favicon created: {png_path}")
            
    except Exception as e:
        print(f"Error creating favicon: {e}")

if __name__ == "__main__":
    create_favicon() 