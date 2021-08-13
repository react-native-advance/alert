import { NativeModules } from 'react-native';

type AlertType = {
  showMessage(title?: string, message?: string, duration?: number): void;
};

const { Alert } = NativeModules;

export default Alert as AlertType;
