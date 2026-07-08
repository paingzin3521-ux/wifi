import mane_wifidog
import asyncio

if __name__ == "__main__":
    try:
        asyncio.run(mane_wifidog.main())
    except KeyboardInterrupt:
        print("\nStopped by user.")
    except Exception as e:
        print(f"\nError: {e}")
