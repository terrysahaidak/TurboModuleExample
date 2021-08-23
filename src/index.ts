import NativeModule from './TurboModule';

export function getString(): Promise<string> {
  return NativeModule.getString();
}

export function setString(content: string): void {
  NativeModule.setString(content);
}

