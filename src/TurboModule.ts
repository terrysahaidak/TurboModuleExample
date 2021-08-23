import { TurboModule, TurboModuleRegistry } from 'react-native-tscodegen-types';

export interface Spec extends TurboModule {
  getConstants: () => {};
  getString: () => Promise<string>;
  setString: (content: string) => void;
}

export default (TurboModuleRegistry.getEnforcing<Spec>('TurboClipboard')) as Spec;

