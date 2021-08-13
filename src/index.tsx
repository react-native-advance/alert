import { NativeModules } from 'react-native';

type AlertType = {
  multiply(a: number, b: number): Promise<number>;
};

const { Alert } = NativeModules;

export default Alert as AlertType;
