import React from 'react';
import { Coffee } from 'lucide-react';

const CoffeeHeader: React.FC = () => {
  return (
    <header className="text-center mb-8">
      <div className="flex justify-center mb-4">
        <div className="relative">
          <Coffee size={48} className="text-amber-800" />
          <div className="absolute -top-1 -right-1 animate-steam">
            <div className="h-2 w-1 bg-gray-200 rounded-full mb-1 opacity-60"></div>
            <div className="h-2 w-1 bg-gray-200 rounded-full ml-1 opacity-60"></div>
          </div>
        </div>
      </div>
      <h1 className="text-3xl font-bold text-amber-900 mb-2">Buy Me a Coffee 🍵</h1>
      <p className="text-amber-700 max-w-md mx-auto">
        Instantly on the Somnia Network. Your support means the world to us.
      </p>
      <div className="block mb-2 text-xs text-red-700 dark:text-yellow-300 bg-gray-50 dark:bg-yellow-900/30 rounded px-3 py-2">
        <strong>Note:</strong> Ensure You are Connected on Somnia Test Network to Donate. If not, funds will be lost.
      </div>
    </header>
  );
};

export default CoffeeHeader;